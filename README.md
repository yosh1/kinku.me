# neko board

<img src="https://github.com/yosh1/neko-board/blob/master/app/assets/images/ogp.png?raw=true" width="100%" />

---

## How to run

### docker create

```
$ docker run -itd -v $PWD:/home -w /home -p 127.0.0.1:3001:3001 --name <NAME> ruby /bin/bash
```

### docker start

```
$ docker start <NAME>
```

### docker exec

```
$ docker exec -it <NAME> /bin/bash
```

### pakcage install

```
# apt-get # ...(something)
```

### change dir

```
# cd /<NAME>
```

### bundle install

```
$ bundle install
```

### rails serve

```
# rails server -b 0.0.0.0
```
