FROM alpine:latest

RUN mkdir -p /usr/local/app
WORKDIR /usr/local/app
RUN apk update && apk add bash build-base ncurses-dev nano flex

COPY . .

WORKDIR /usr/local/app/lcc-1.3

RUN ./configure && make && make install

WORKDIR /usr/local/app/lc3tools

RUN ./configure && make && make install

WORKDIR /usr/local/app

ENTRYPOINT ["/bin/bash"]
