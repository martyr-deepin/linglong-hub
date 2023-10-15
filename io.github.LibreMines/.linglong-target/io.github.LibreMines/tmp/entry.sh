#global variable
JOBS=6
VERSION=1.9.1
ARCH="x86_64"
TRIPLET="x86_64-linux-gnu"
#local variable
CC=""
CXX=""
NM=""
AR=""
CFLAGS=""
CXXFLAGS=""
LDFLAGS=""
id=""
triplet=""
build_dir="build_dir"
dest_dir=""
conf_args="-DCMAKE_INSTALL_PREFIX=${PREFIX} \
-DCMAKE_INSTALL_LIBDIR=${PREFIX}/lib/${TRIPLET}
"
extra_args=""
jobs="-j${JOBS}"
#build commands
cmake -B ${build_dir} ${conf_args} ${extra_args}
cmake --build ${build_dir} -- ${jobs}
env DESTDIR=${dest_dir} cmake --build ${build_dir} --target install

#binary strip script
if [ ! -f $(command -v eu-strip) ]; then
  echo "can not found  eu-strip"
  exit 1;
fi

#find binaries
find ${PREFIX} -type f '(' -perm -111 -o -name '*.so*' -o -name '*.cmxs' \
                         -o -name '*.node' ')' \
                         -not -path "${PREFIX}/debug/*" \
                         > binaries

for binary in `cat binaries`;do
#skip stripped binary
if [ "`file $binary|grep "not stripped"`" == "" ]; then
  continue
fi

binaryName=${binary##*/}
binaryPath=${binary%/*}
#remove $PREFIX from binaryPath
subPath=${binaryPath/${PREFIX}}
destPath=${PREFIX}/debug/$subPath
extName=".debug"
debugFileName=$binaryName${extName}

mkdir -p $destPath
echo "strip $binary to $destPath/$debugFileName"
eu-strip $binary -f $destPath/$debugFileName
done
