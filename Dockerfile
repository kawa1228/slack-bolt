FROM node:12

# アプリケーションディレクトリを作成
WORKDIR /usr/src/app
VOLUME /app

# アプリケーションの依存関係をインストールする
# ワイルドカードを使用して、package.json と package-lock.json の両方が確実にコピーされるように
COPY app/package*.json ./app/

RUN cd app && npm install
# 本番用にコードを作成している場合
# RUN npm install --only=production

# アプリケーションのソースをバンドルする
COPY . .

EXPOSE 8080
CMD [ "node", "app/bin/www" ]
