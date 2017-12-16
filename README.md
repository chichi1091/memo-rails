# README
# はじめてのRuby on Rails
勉強のために[memo-sample](https://github.com/backpaper0/memo-sample)をRailsで作ってみました  
勝手にごめんなさい。。


## コマンドメモ
### Docker起動
```bash
$ docker-compose up -d
```

### 新規作成
```bash
$ docker-compose build
$ docker-compose run web rails new myapp --force --database=mysql --skip-bundle
$ docker-compose run web rake db:create
$ docker-compose run web rake myapp db:create
$ docker-compose run myapp web rake db:create
$ docker-compose run web rake ./myapp db:create
$ docker-compose run web rake db:create
```

### マイグレーション
```bash
$ docker-compose exec web rails g model Memo content:text
$ docker-compose exec web rake db:migrate
```

### コントローラー
```bash
$ docker-compose exec web rails generate controller index
$ docker-compose exec web rails generate controller memo
```

