# docker-hubからベースのdocker imageをpull
FROM node:14.5.0-alpine

# コンテナ内で作業するディレクトリを指定
WORKDIR /usr/src/app/bulletinboard

# ファイルを全部作業用ディレクトリにコピー
COPY ./app/bulletinboard .

# パッケージをインストール
RUN yarn install

# コンテナを起動する際に実行されるコマンド
CMD [ "yarn", "start" ]
