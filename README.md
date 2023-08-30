# CatBox for Android


[![API](https://img.shields.io/badge/API-21%2B-brightgreen.svg?style=flat)](https://android-arsenal.com/api?level=21)
[![Releases](https://img.shields.io/github/v/release/AntiNeko/CatBoxForAndroid)](https://github.com/AntiNeko/CatBoxForAndroid/releases)
[![License: GPL-3.0](https://img.shields.io/badge/license-GPL--3.0-orange.svg)](https://www.gnu.org/licenses/gpl-3.0)

sing-box / universal proxy toolchain for Android.

一款使用 sing-box 的 Android 通用代理软件。

改编自 [NekoBoxForAndroid](https://github.com/MatsuriDayo/NekoBoxForAndroid)，移除了一些不令人喜欢的内容，改进了部分情况下的体验。

## 下载 / Downloads

### GitHub Releases

[![GitHub All Releases](https://img.shields.io/github/downloads/AntiNeko/CatBoxForAndroid/total?label=downloads-total&logo=github&style=flat-square)](https://github.com/AntiNeko/CatBoxForAndroid/releases)

[下载](https://github.com/AntiNeko/CatBoxForAndroid/releases)

### F-Droid

[![IzzySoft](https://img.shields.io/badge/F--droid-IzzySoft-blue?logo=fdroid)](https://apt.izzysoft.de/fdroid/)

[下载 (IzzySoft)](https://apt.izzysoft.de/fdroid/index/apk/moe.cb4a)

## 更改记录 & 发布频道 / Changelog & Telegram channel

https://t.me/AntiNek0

## 项目主页 & 文档 / Homepage & Documents

https://AntiNeko.github.io

## 代理 / Proxy

* SOCKS (4/4a/5)
* HTTP(S)
* SSH
* Shadowsocks
* VMess
* VLESS
* WireGuard
* Trojan
* Trojan-Go ( trojan-go-plugin )
* NaïveProxy ( naive-plugin )
* Hysteria ( hysteria-plugin )
* TUIC

请到[这里](https://AntiNeko.github.io/m-plugin/)下载插件。

Please visit [here](https://AntiNeko.github.io/m-plugin/) to download plugins.

## 订阅 / Subscription

* Raw: some widely used formats (like shadowsocks, clash and v2rayN)
* 原始格式：一些广泛使用的格式（如 shadowsocks、clash 和 v2rayN）

## 开发 / Development

### 编译

#### 获取源代码

```shell
git clone https://github.com/AntiNeko/CatBoxForAndroid.git
```

#### libcore

环境：

* java-8-openjdk
* go （版本应尽可能新）

运行：

```shell
./run lib core
```

得到 `app/libs/libcore.aar`

目前需要使用 [带有 `-cache` 选项的 gomobile](https://github.com/MatsuriDayo/gomobile) 编译，如果 GOPATH 中不存在 gomobile 则会自动下载编译。

#### Dashboard

具体参考以下 Dashboard，也可以用自己喜欢的。可以自行编译，也可以下载预构建的。

- [MetaCubeX/Yacd-meta](https://github.com/MetaCubeX/Yacd-meta)
- [MetaCubeX/metacubexd](https://github.com/MetaCubeX/metacubexd)

1. 把编译好 `public` `dist` 等 **`index.html`** 所在的文件夹 重命名为 `Dash-*` （后面的名字自己起，如 `Dash-metacubexd`）。

2. 把 `Dash-*` 打包为 zip 并命名为 `dashboard.zip`

```shell
zip -r dashboard Dash-* -9
```

3. 将 `dashboard.zip` 置于 `app/src/assets/main/dashboard.zip`。

我们提供了 Dashboard 的构建脚本，注意确保自己已安装 pnpm 并处理好版本相关问题（目前暂时是无脑最新版）：

```shell
DASHBOARD_NAME=metacubexd # Or Yacd-meta
./run dashboard init $DASHBOARD_NAME
```

#### apk

环境：

* jdk-17-openjdk
* ndk 25.0.8775105

如果没有环境变量 `$ANDROID_HOME` 和 `$ANDROID_NDK_HOME` 可以运行脚本 `buildScript/init/env_ndk.sh`

```shell
echo "sdk.dir=${ANDROID_HOME}" > local.properties
echo "ndk.dir=${ANDROID_HOME}/ndk/25.0.8775105" >> local.properties
```

签名准备（可选，建议编译后再签名）：替换 `release.keystore` 为自己的。

```shell
export KEYSTORE_PASS=
export ALIAS_NAME=
export ALIAS_PASS=
```

以上这只是举例，实际使用请勿直接把密码信息放入环境变量，建议在编译后自行签名。

下载 geo 资源文件：

```shell
./run init action gradle
```

正式编译：

```shell
./gradlew app:assembleOssRelease
```

在 `app/build/outputs/apk` 得到 apk 文件。

## Credits

Core:
- [SagerNet/sing-box](https://github.com/SagerNet/sing-box)
- [Matsuridayo/sing-box-extra](https://github.com/MatsuriDayo/sing-box-extra)

Android GUI:
- [shadowsocks/shadowsocks-android](https://github.com/shadowsocks/shadowsocks-android)
- [SagerNet/SagerNet](https://github.com/SagerNet/SagerNet)
- [Matsuridayo/Matsuri](https://github.com/MatsuriDayo/Matsuri)
- [MatsuriDayo/NekoBoxForAndroid](https://github.com/MatsuriDayo/NekoBoxForAndroid)

Web Dashboard:

- [MetaCubeX/Yacd-meta](https://github.com/MetaCubeX/Yacd-meta)
- [MetaCubeX/metacubexd](https://github.com/MetaCubeX/metacubexd)
