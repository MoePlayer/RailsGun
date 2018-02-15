# README

This README would normally document whatever steps are necessary to get the
application up and running.

## System dependencies
* Ruby version 2.5.0

* Rails version 5.1.4

* Dplayer >= v1.21.2

```bash
bundle install
```

* Configuration
```bash
vim config/database.yml
```

* Database creation
```bash
rake db:migrate
```

* Test run
```bash
rails server
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
* [ ] Database initialization

* [ ] How to run the test suite

* [ ] Services (job queues, cache servers, search engines, etc.)

* [ ] Deployment instructions

* [ ] ...
