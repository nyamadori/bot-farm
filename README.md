bot-farm
========

Dependencies
------------

### require

* Ruby (>= 2.4.1)
* [Yarn](https://yarnpkg.com/)

### recommend

* Docker
* Docker Compose

### optional

* [direnv](https://github.com/direnv/direnv)

Getting Started
---------------

``` bash
# clone this repo
git clone git@github.com:nyamadori/bot-farm.git

# make development environment for bot-farm
cd bot-farm
docker-compose build
docker-compose exec rails ./bin/setup

# boot bot-farm
docker-compose exec spring rails server
```
