FROM node:12.3.1

ENV NUXT_HOST=0.0.0.0
WORKDIR /app
# ファイルの変更や新しいページの追加のたびにyarn installが実行されないようにする
COPY ./app/package.json ./app/yarn.lock ./
RUN yarn install

COPY ./app .

CMD ["yarn", "run", "dev"]
