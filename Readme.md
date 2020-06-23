# Nattomaki
リレー小説投稿サイト「なっとうまき」

## 環境構築

### Windows

- Windows10 Pro
- Docker for Windows

### Mac

- Docker for Mac

### 共通

```
docker-compose build
docker-compose run app yarn install
docker-compose run app bundle exec rake db:migrate:reset
docker-compose up
```
でサーバ起動

## コマンド

### dockerコンテナのシェル起動
```
docker-compose exec app /bin/bash
```
