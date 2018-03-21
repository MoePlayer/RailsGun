RailsGun
=====

[![Build Status](https://travis-ci.org/MoePlayer/RailsGun.svg?branch=master)](https://travis-ci.org/MoePlayer/RailsGun)

## System dependencies
* Ruby version 2.5.0

* Rails version 5.1.4

* Dplayer >= v1.22.1

* PostgreSQL >=9.4

## Install && Run

```bash
bundle install
```

* Configuration
```bash
vim config/database.yml
```

* Database creation
```sh
rake db:setup
```

* Test run
```bash
rails server
```

* production
```sh
export RAILS_ENV=production
export POSTGRESQL_DATABASE_PASSWORD=............
export SECRET_KEY_BASE=...............

# start railsgun in daemon
rails server -d
```



## TestUnit

```sh
rails test
```

## Danmaku API
>Only support dplayer v2 interface

```JavaScript
var dp = new DPlayer({
    container: document.getElementById('dplayer'),
    screenshot: true,
    video: {
        url: 'demo.mp4',
        pic: 'demo.jpg',
        thumbnails: 'thumbnails.jpg'
    },
    subtitle: {
        url: 'webvtt.vtt'
    },
    danmaku: {
        id: 'demo',
        api: 'http://localhost:3000/dplayer/'
    }
});

```

## Test Server Address

> The stability of the Barrage data is not currently used with caution

> 目前不保证弹幕数据的稳定性 慎用!

http://api.22333.fun/dplayer/



## TodoList
* [x] Database initialization

* [x] How to run the test suite

* [ ] Services (job queues, cache servers, search engines, etc.)

* [ ] Deployment instructions

* [ ] ...
