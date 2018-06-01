FROM ubuntu:16.04
MAINTAINER Luca Moser

# create app directory
RUN mkdir -p /app/logs && mkdir -p /app/.caddy

# copy app
COPY ./caddy/caddy /app

WORKDIR /app
ENTRYPOINT ["/app/caddy"]
