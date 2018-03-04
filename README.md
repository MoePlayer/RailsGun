RailsGun
=====

[![Build Status](https://travis-ci.org/MoePlayer/RailsGun.svg?branch=master)](https://travis-ci.org/MoePlayer/RailsGun)

## System dependencies
* Ruby version 2.5.0

* Rails version 5.1.4

* Dplayer >= v1.22.1

* PostgreSQL

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

## TodoList
* [x] Database initialization

* [x] How to run the test suite

* [ ] Services (job queues, cache servers, search engines, etc.)

* [ ] Deployment instructions

* [ ] ...
