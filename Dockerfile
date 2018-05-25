FROM alpine:3.7
MAINTAINER Luca Moser

# create app directory
RUN mkdir -p /app

# copy app
COPY ./caddy/caddy /app

WORKDIR /app
ENTRYPOINT ["/app/caddy"]
