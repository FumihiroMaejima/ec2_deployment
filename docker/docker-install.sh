#!/bin/sh

# dockerのインストール
# latest:1.25.4
installDocker() {
    yum install -y docker
    service docker start
    usermod -a -G docker fltest
    curl -L https://github.com/docker/compose/releases/download/1.25.4/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
    chmod +x /usr/local/bin/docker-compose
    systemctl enable docker
}

installDocker
