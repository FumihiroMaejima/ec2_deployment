# EC2 Deployment

デプロイ時にproduction環境で用意するファイル

*docker環境を元に書いてあるAMazon Linuxでのコマンド実行についてはそれぞれ改めて確認が必要。

## 各ディレクトリについて

### git

git環境の構築

### docker

docker環境の構築

### certbot

certbot環境の構築

certbotのファイル修正について

⇨certbotをインストールしたら直ぐに「/usr/bin/certbot-auto」を修正する

```
$ sudo vim /usr/bin/certbot-auto
・
・
・
elif [ -f /etc/issue ] && grep -iq "Amazon Linux" /etc/issue ; then
⇨下記の通りに書き換える。
elif grep -i "Amazon Linux" /etc/issue > dev/null 2>&1 || grep 'cpe:.*:amazon_linux:2' /etc/os-release > /dev/null 2>&1; then
```


### npm_vue

npm環境の構築、vue環境の構築



### ユーザーの作成

madeUserグループをsudoコマンドがパスワード無しで実行できるように追記

```
sudo adduser madeUser

```

### sudo権限の追加

```
sudo visudo
・
・
・
## Same thing without a password
# %wheel        ALL=(ALL)       NOPASSWD: ALL
madeUser        ALL=(ALL)       NOPASSWD: ALL

```


### インスタンスにアクセス

```
$ ssh -p ポート番号 -i ~/.ssh/秘密鍵.pem ユーザー@サーバーのIP
```
