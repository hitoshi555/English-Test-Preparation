# Dockerfile

# nodeの最新バージョンをベースにする
FROM node:latest

# 作業ディレクトリを/appに設定
WORKDIR /app

# package.jsonとpackage-lock.jsonを/appにコピー
COPY ./front/ /app/

# npm installを実行
RUN npm install

# アプリケーションのソースコードを/appにコピー
COPY . /app

# アプリケーションをビルド
RUN npm run build

# アプリケーションを実行
CMD [ "npm", "start" ]