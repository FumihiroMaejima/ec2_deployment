#!/bin/sh

# nvmのインストール
installNvm() {
   git clone https://github.com/creationix/nvm.git ~/.nvm
}

# nvmのパスを追加
addNvmPath() {
   source ~/.nvm/nvm.sh
}

# nvmのパスを~/.bash_profileに追加
# 下記を追記する
# nvm
#if [[ -s ~/.nvm/nvm.sh ]] ; then
#        source ~/.nvm/nvm.sh ;
#fi
addNvmPathInBashProfile() {
   vim ~/.bash_profile
}


# 安定板をインストール
installStableVersion() {
   nvm install stable
   nvm use stable
}

# yarnのインストール
installYarn() {
   npm install -g yarn
}

# vue-cliのインストール
addVueCli() {
   yarn global add @vue/cli
}

# 関数呼び出し




installNvm
addNvmPath
installStableVersion

installYarn
addVueCli
