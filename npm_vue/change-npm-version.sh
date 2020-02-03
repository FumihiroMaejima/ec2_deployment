#!/bin/sh

# nodejs,npmのインストール
installNode() {
    yum install -y nodejs npm
}

# wgetのインストール
installWget() {
    yum install -y wget
}

# nのインストール
installN() {
    yum install n -g
}

# nのバージョン設定
# パラメーター:stable,latest
setNVersion() {
    n $1
}

# node,npmのパージ
purgeNodeNpm() {
    yum remove -y nodejs npm
}

# バージョン切り替え失敗後の再試行時のみコメントアウトを外して使用
#installNode

# 関数呼び出し
installWget
installN

### nのバージョンの指定
N_VERSION="stable"

setNVersion ${N_VERSION}

purgeNodeNpm

