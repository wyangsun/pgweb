FROM golang:1.8-alpine
MAINTAINER vungle <yang.wang@gmail.com>

WORKDIR /go/src/github.com/sosedoff/pgweb

ADD . /go/src/github.com/sosedoff/pgweb

RUN \
  apk update && \
  apk add --no-cache git make && \
  make setup

#EXPOSE 8081
#CMD ["/usr/bin/pgweb", "--bind=0.0.0.0", "--listen=8081"]