#!/bin/sh

# gitのインストール(ついでにvimも)
installGit() {
    yum -y install vim
    yum -y install git
}

installGit
