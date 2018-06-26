FROM debian:stretch-slim
LABEL maintainer="nuits.jp@live.jp"

ENV MD2REVIEW_VERSION 1.12.0

ENV LANG en_US.UTF-8

# setup
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
      locales git-core curl ca-certificates && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen
RUN locale-gen en_US.UTF-8 && update-locale en_US.UTF-8

RUN apt update && \
    apt install -y build-essential && \
    rm -rf /var/lib/apt/lists/*

RUN apt-get update && \
    apt-get install -y ruby-dev && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN gem install md2review
