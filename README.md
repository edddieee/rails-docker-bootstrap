# Rails Docker Bootstrap
### A minimal Dockerfile based on Ruby Alpine!

## Getting Started

```
$ git clone https://github.com/edgaryonemura/rails-docker-bootstrap <project-name>
$ cd <project-name>
$ docker-compose run web rails new . <options>
$ docker-compose build
```

## Running

```
$ docker-compose up
```

## Info

- Ruby: `2.6.3`
- Rails: `6.0.0`
- Base Image: `ruby:2.6.3-alpine3.10`
