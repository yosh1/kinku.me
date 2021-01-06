## Create container

```
$ docker run -itd -v $PWD:/home -w /home -p 127.0.0.1:3000:3000 --name <XXX> ruby /bin/bash
```

## Start shell

```
$ docker exec -it school /bin/bash
```

### sqlite3のインストール

```
# apt update
# apt install sqlite3
```

### node.jsのインストール

```
# curl -sL https://deb.nodesource.com/setup_15.x | bash -
# apt-get install -y nodejs
```

### yarnのインストール
```
# curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
# echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
# apt update && apt install yarn
```
### railsのインストール

```
# gem install rails
```

## Run puma

```
$ rails server -b 0.0.0.0
```

## migrate

```
$ rails db:migrate
```

## drop db

```
rails db:drop
```
