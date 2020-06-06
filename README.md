# Slack Bolt Express Application on Docker

## ローカルで開発
```
cd app && npm run watch
```
## 自分のイメージを構築する
```
docker build -t kawa1228/slack-bolt .
```
## イメージの実行
```
docker run -p 49160:3000 -d kawa1228/slack-bolt
```
http://localhost:49160/
## 確認
コンテナ ID を取得
```
docker ps
```
アプリ出力をプリント
```
docker logs <container id>
```
イメージ確認
```
docker images
```
コンテナに入る
```
docker exec -it <container id> /bin/bash
```
## 削除
```
docker rmi <image name>
```
## Hello world
```
curl -i localhost:49160
```
or
```
http://localhost:49160/
```
## 参考
https://nodejs.org/ja/docs/guides/nodejs-docker-webapp/
