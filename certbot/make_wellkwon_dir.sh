#!/bin/sh

# .well-knownディレクトリの作成
# サイトのpublicディレクトリ内(rootで)で実行する必要がある。
# index.htmlなどが置かれている場所である。
# *tflaskの場合はtemplatesディレクトリ内
# *Laravelの場合はpublicディレクトリ内
makeWellKnownDir() {
    mkdir .well-known
    mkdir .well-known/acme-challenge
    sudo chmod 755 -R .well-known
}

makeWellKnownDir
