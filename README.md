# homebrew-versions

> 仅自己使用的 cask 版本库，不提供技术任何支持，不定期更新，感兴趣可以玩玩或者自己搞个仓库。


## 安装

``` sh
$ brew tap 52cik/homebrew-versions
```


## 使用

添加源后即可安装软件，例如安装 node6

``` sh
$ brew cask install node6
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


## 软件目录

\# | 名称 | 版本 | 描述
:-- | :-- | :-- | :--
1 | **node4** | 4.8.0  | 淘宝镜像地址 (LTS 持续更新到 2018-04-01)
2 | **node5** | 5.12.0 | 淘宝镜像地址 (停止更新)
3 | **node6** | 6.10.0  | 淘宝镜像地址 (LTS 持续更新到 2019-04-01)
4 | **node7** | 7.6.0  | 淘宝镜像地址 (过渡版本更新到 2017-07-01 左右，具体时间未公布)
5 | **atom-mac** | 1.14.3  | 淘宝镜像地址



![LTS schedule][LTS]

[LTS]: https://github.com/nodejs/LTS/raw/master/schedule.png
