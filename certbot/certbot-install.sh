#!/bin/sh

# certbotのインストール
installCertBot() {
    sudo curl https://dl.eff.org/certbot-auto -o /usr/bin/certbot-auto
    sudo chmod 700 /usr/bin/certbot-auto

    # Amazon Linux2用の設定が必要。詳細はReadMe
    sudo vim /usr/bin/certbot-auto
}

installCertBot
