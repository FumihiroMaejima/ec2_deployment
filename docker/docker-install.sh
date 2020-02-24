#!/bin/sh

# dockerのインストール
# latest:1.25.4
installDocker() {
    sudo yum install -y docker
    sudo service docker start
    sudo usermod -a -G docker ec2-user
    sudo usermod -a -G docker your_user
    sudo curl -L https://github.com/docker/compose/releases/download/1.25.4/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
    sudo chown ec2-user:docker /usr/local/bin/docker-compose
    sudo chmod +x /usr/local/bin/docker-compose
    sudo systemctl enable docker

    # 実行するには、一度exitして再度ログインする必要がある。
}

installDocker
