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
make_node_env.shのみを参考にする

```
git clone https://github.com/creationix/nvm.git ~/.nvm
```

nvmへのパスを通す。

```
$ source ~/.nvm/nvm.sh


$ vim ~/.bash_profile
# nvm
if [[ -s ~/.nvm/nvm.sh ]] ; then
        source ~/.nvm/nvm.sh ;
fi
```


```
$ nvm ls-remote

[ec2-user@ip-172-31-43-92 nodeenv]$ nvm install stable
Downloading and installing node v13.8.0...

[ec2-user@ip-172-31-43-92 nodeenv]$ nvm use stable
Now using node v13.8.0 (npm v6.13.6)

$ npm install -g yarn
yarn global add @vue/cli
```

## その他の環境構築について

### インスタンス作成

基本無料枠で作成
sshでアクセスする前に下記の設定を行う。
・ElasticIPの設定
・セキュリティグループの設定
・Route53の設定

＊秘密鍵はインスタンス作成時に設定出来る。


### ユーザーの作成

madeUserグループをsudoコマンドがパスワード無しで実行できるように追記

```
sudo adduser madeUser

```

### パスワードを変更する場合

ec2-userなどもこれで変更出来る。

```
sudo passwd madeUser
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

IPはElasticIP

```
$ ssh -p ポート番号 -i ~/.ssh/秘密鍵.pem ユーザー@サーバーのIP
```
