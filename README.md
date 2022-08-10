# Linglong Hub

## 项目简介

此项目存放构建玲珑应用必备的工程配置文件`linglong.yaml`。

## 主要流程

- 开发者往此项目提交pull request。
- 项目维护者审核内容通过后，触发构建流程。
- 构建成功后内容将被提交到测试仓库。
- 应用测试通过后，项目维护者将合并该pull request。
- merge后的应用将会上架到[玲珑网页商店](https://store.linglong.dev)。

## 主要内容

- [玲珑项目工程配置文件](https://linglong.dev/guide/ll-builder/manifests.html)

以工程org.deepin.demo为例，提交一个pull request到linglong-hub，目录结构如下：

```text
linglong-hub
└── org.deepin.demo
     └── linglong.yaml
```

提交多个应用，目录结构如下:

```text
linglong-hub
├── org.deepin.demo
|    └── linglong.yaml
└── org.deepin.draw
     └── linglong.yaml
```

## 应用更新

  更新应用的`linglong.yaml`并创建pull request。

## 提交规范

[Commit 提交信息规范](https://github.com/linuxdeepin/developer-center/wiki/Commit-%E6%8F%90%E4%BA%A4%E4%BF%A1%E6%81%AF%E8%A7%84%E8%8C%83)。
