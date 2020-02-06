#!/bin/sh

# 対象のドメイン
# YOUR_DOMAIN="example.com"


# 証明書の更新
## dockerコンテナを停止すること
## 更新後、コンテナを再起動をかけること。
renewCertificate() {
    sudo certbot-auto renew
}

renewCertificate

# 証明書の発行の仕方によっては下記の様な方法もある。
# PUBLIC_ROOT="/var/www/html/project/public"
# /usr/local/certbot/certbot-auto renew --webroot -w ${PUBLIC_ROOT} --post-hook 'systemctl reload nginx'