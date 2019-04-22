FROM i386/ubuntu

RUN mkdir -p /usr/local/app
WORKDIR /usr/local/app
RUN apt-get update && apt-get --assume-yes install bash build-essential ncurses-dev nano flex libtinfo-dev

COPY . .

WORKDIR /usr/local/app/lcc-1.3

RUN ./configure && make && make install

WORKDIR /usr/local/app/lc3tools

RUN ./configure && make && make install

WORKDIR /usr/local/app

ENTRYPOINT ["/bin/bash"]
