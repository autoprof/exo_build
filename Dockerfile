FROM debian:10

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update -qq && apt-get install -qq -y --no-install-recommends ca-certificates git && rm -rf /var/lib/apt/lists/*

RUN mkdir /usr/src/app
WORKDIR /usr/src/app


COPY . ./


