#!/bin/sh

# 対象のドメイン
YOUR_DOMAIN="example.com"


# 証明書の作成
## param $1 YOUR_DOMAIN
makeCertificate() {
    sudo certbot-auto certonly --standalone -d $1 --agree-tos --server https://acme-v02.api.letsencrypt.org/directory --debug
}

makeCertificate ${YOUR_DOMAIN}

#  権限を変更する必要がある場合 ユーザーは任意で変更する
# sudo chown ec2-user:ec2-user -R /etc/letsencrypt