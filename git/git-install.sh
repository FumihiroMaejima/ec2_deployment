#!/bin/sh

# gitのインストール(ついでにvimも)
installGit() {
    sudo yum -y install vim
    sudo yum -y install git
}

installGit
