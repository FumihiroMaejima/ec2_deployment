#!/bin/sh

# certbotのインストール
installCertBot() {
    sudo curl https://dl.eff.org/certbot-auto -o /usr/bin/certbot-auto
    sudo chmod 700 /usr/bin/certbot-auto
}

installCertBot
