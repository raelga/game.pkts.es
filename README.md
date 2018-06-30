# Site for pkts | The Game

https://game.pkts.es

## About

Static site for a videogame made with RPG Maker about the pkts community, full of inside jokes.

The webpage uses [Templated Theory Site Template](https://templated.co/theory).

## Run

The website can be deployed with docker at localhost:8080 using the makefile targets:

- Deploy

```bash
make run
```

Will build a container image from `nginx:latest` with the docs folder copied as nginx document root.

- Develop

```bash
make dev
```

Will build a container image from `nginx:latest` with the docs folder mounted to nginx document root.