# homebrew-versions

> 仅自己使用的版本库，不提供技术任何支持，不定期更新，感兴趣可以玩玩或者自己搞个仓库。


## 安装

``` sh
$ brew tap 52cik/homebrew-versions
```


## 使用

添加源后即可安装软件，例如安装 node8

``` sh
$ brew cask install node8
```

通过淘宝镜像安装，几乎秒装。


## 更新

``` sh
$ brew update
```

**天朝用户如果 `brew update` 直接更新非常慢的话，推荐用下面方法:**

``` sh
$ brew untap 52cik/homebrew-versions # 移除源
$ brew tap 52cik/homebrew-versions   # 添加源
```


## cask 软件目录

\# | 名称 | 版本 | 描述
:-- | :-- | :-- | :--
1 | **node4** | 4.8.6  | 淘宝镜像地址 (LTS 持续更新到 2017-04-01, 维护到 2018-04-01)
2 | **node5** | 5.12.0 | 淘宝镜像地址 (No LTS)
3 | **node6** | 6.12.0 | 淘宝镜像地址 (LTS 持续更新到 2018-04-01, 维护到 2019-04-01)
4 | **node7** | 7.10.1 | 淘宝镜像地址 (No LTS)
5 | **node8** | 8.9.1  | 淘宝镜像地址 (LTS 持续更新到 2019-04-01, 维护到 2019-12-01)
5 | **node9** | 9.2.0  | 淘宝镜像地址 (No LTS)

[LTS schedule](https://github.com/nodejs/LTS#lts-schedule1)

![LTS schedule](https://github.com/nodejs/LTS/raw/master/schedule.png)

----


## 源码软件目录

\# | 名称 | 版本 | 描述
:-- | :-- | :-- | :--
1 | **nginx10** | 1.10.3  | 官方包
2 | **nginx11** | 1.11.13 | 官方包

**nginx 版本基于 `homebrew/nginx` 源，请先 `brew tap homebrew/nginx` 否则无法安装插件**

> `echo` 模块只支持 `1.11.3` 版本，所以只能基于 `1.10` 版本使用

安装:

``` sh
$ brew install nginx10 --with-lua-module --with-echo-module --with-redis-module
```

卸载:

``` sh
$ brew uninstall nginx10
```

安装官方版本，默认最新版本:

``` sh
$ brew install nginx-full --with-lua-module --with-redis-module
```
