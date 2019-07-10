# cloud_instance_auto_stopper
cloudに立てたサーバを、定期的にstopするためのツールです。
herokuにて定期的に実行します。
現在、awsにのみ対応しています。


## Usage

### Required environment variables

```
AWS_ACCESS_KEY_ID=<your aws-access-key>
AWS_SECRET_ACCESS_KEY=<your aws-secret-access-key>
AWS_DEFAULT_REGION=<your default-aws-region>
AWS_TARGET_INSTANCE_IDS=<target instance ids>
```

## Deploy to heroku

```
# heroku first setup
heroku login
heroku create [any application name]
heroku git:remote -a [specific application name]
heroku buildpacks:add heroku-community/awscli

# 下記コマンドで、heroku-community/awscliが表示されればOK
heroku buildpacks

# heroku config:set 環境変数名=セットしたい値
heroku config:add AWS_ACCESS_KEY_ID=<your aws-access-key>
heroku config:add AWS_SECRET_ACCESS_KEY=<your aws-secret-access-key>
heroku config:add AWS_DEFAULT_REGION=<your default-aws-region>
heroku config:add AWS_TARGET_INSTANCE_IDS="<target instance id1> [id2] [id3]..."
heroku config:add TZ=Asia/Tokyo
```

```
# login heroku user for deploy
heroku login
git push heroku master
```
