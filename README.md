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

建议提前设置 `$GOPATH`，并安装好 gomobile，否则会自行编译一个 gomobile。

#### apk

环境：

* jdk-17-openjdk
* ndk 25.0.8775105

如果没有环境变量 `$ANDROID_HOME` 和 `$ANDROID_NDK_HOME` 可以运行脚本 `buildScript/init/env_ndk.sh`

```shell
echo "sdk.dir=${ANDROID_HOME}" > local.properties
echo "ndk.dir=${ANDROID_HOME}/ndk/25.0.8775105" >> local.properties
```

签名准备（可选，可以编译后再签名）：替换 `release.keystore` 为自己的。

```shell
export KEYSTORE_PASS=
export ALIAS_NAME=
export ALIAS_PASS=
```

以上这只是举例，请勿直接把密码信息放入环境变量，建议在编译后自行签名。

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

- [Yacd-meta](https://github.com/MetaCubeX/Yacd-meta)
