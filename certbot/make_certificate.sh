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



#vDOMAIN="example.com"
#vMAIL_ADDRESS="example@example.com"

# Path of cert-bot
#vCERT_BOT_PATH=/usr/local/certbot

# Configure nginx
# DOMAIN_CERT_PATH=/etc/letsencrypt/live/${DOMAIN}
# CERT=${DOMAIN_CERT_PATH}/fullchain.pem
# PKEY=${DOMAIN_CERT_PATH}/privkey.pem

# WEB_ROOT=/var/www/html/project/public

# ${CERT_BOT_PATH}/certbot-auto -n certonly --webroot -w ${WEB_ROOT} -d ${DOMAIN} -m ${MAIL_ADDRESS} --agree-tos --server https://acme-v02.api.letsencrypt.org/directory

# R=${RANDOM}
# echo "$((R%60)) $((R%24)) * * $((R%7)) root ${CERT_BOT_PATH}/certbot-auto renew --webroot -w ${WEB_ROOT} --post-hook 'systemctl reload nginx'" > /etc/cron.d/certbot-auto


