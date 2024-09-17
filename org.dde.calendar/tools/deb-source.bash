#!/bin/bash
set -e
# set -x
# 文件名 deb-source.bash
# 包含要解压的deb目录
deb_dir=$(realpath "$1")
# 将deb解压到输出目录
target=$(realpath "$2")
# 默认会跳过base已安装的包，可以强制解压已安装的包
include="$3"
# 临时目录，将内容处理后再移动到 target
out_dir=$(mktemp -d)
cd "$out_dir"
# 临时文件，用于记录deb文件列表和强制安装包名
deb_list_file="$out_dir/deb.list"
include_list_file="$out_dir/include.list"
# 包数据存放的临时目录
data_list_dir="$out_dir/data"
# 生成文件列表
find "$deb_dir" -type f -name "*.deb" > "$deb_list_file"
echo "$include" | tr ',' '\n' > "$include_list_file"
# 用于记录安装的所有文件来自哪个包
mkdir /tmp/deb-source-file || true
# 遍历文件列表
while IFS= read -r file
do
    echo -n "$file" > /dev/stderr
    # 提取control文件
    control_file=$(ar -t "$file" | grep control.tar)
    ar -x "$file" "$control_file"
    # 获取包名
    pkg=$(tar -xf "$control_file" ./control -O | grep '^Package:' | awk '{print $2}')
    rm "$control_file"
    # 如果已安装则跳过
    if (grep -q "^Package: $pkg$" /var/lib/dpkg/status /runtime/packages.list "$PREFIX/packages.list" 2>/dev/null) && ! grep -q "^$pkg$" "$include_list_file"; then
        echo " skip" > /dev/stderr
        echo "$file" >> /tmp/deb-source-file/skip.list
    else
    # 否则安装到$PREFIX目录
        # 换行
        echo "" > /dev/stderr
        # 查找data.tar文件，文件会因为压缩格式不同，有不同的后缀，例如data.tar.xz、data.tar.gz
        data_file=$(ar -t "$file" | grep data.tar)
        # 提取data.tar文件
        ar -x "$file" "$data_file"
        # 解压data.tar文件到输出目录
        mkdir "$data_list_dir"
        tar -xvf "$data_file" -C "$data_list_dir" >> "/tmp/deb-source-file/$(basename "$file").list"
        rm "$data_file"
        
        # 清理不需要复制的目录
        rm -r "${data_list_dir:?}/usr/share/applications"* 2>/dev/null || true
        # 修改pc文件的prefix
        sed -i "s#/usr#$PREFIX#g" "$data_list_dir"/usr/lib/"$TRIPLET"/pkgconfig/*.pc 2>/dev/null || true
        sed -i "s#/usr#$PREFIX#g" "$data_list_dir"/usr/share/pkgconfig/*.pc 2>/dev/null || true
        # 修改指向/lib的绝对路径的软链接
        find . -type l | while IFS= read -r file; do
            linkTarget=$(readlink "$file") 
            # 如果指向的路径以/lib开头，并且文件不存在，则添加 /runtime 前缀
            # 部分 dev 包会创建 so 文件的绝对链接指向 /lib 目录下
            if echo "$linkTarget" | grep -q ^/lib && ! [ -f "$linkTarget" ]; then
                ln -sf "$target$linkTarget" "$file" 
            fi
        done
        # 复制/lib,/bin,/usr目录
        cp -rP "$data_list_dir/lib" "$target" 2>/dev/null|| true
        cp -rP "$data_list_dir/bin" "$target" 2>/dev/null|| true
        cp -rP "$data_list_dir"/usr/* "$target" || true
        rm -r "$data_list_dir"

    fi;
done < "$deb_list_file"


# 清理临时目录
rm -r "$out_dir"
