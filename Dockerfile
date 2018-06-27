FROM debian:stretch-slim
LABEL maintainer="nuits.jp@live.jp"

ENV LANG en_US.UTF-8

RUN apt-get update && \
    apt-get install -y --no-install-recommends locales && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen
RUN locale-gen en_US.UTF-8 && update-locale en_US.UTF-8

RUN apt update && \
    apt install -y build-essential && \
    apt autoclean && \
    rm -rf /var/lib/apt/lists/*

RUN apt-get update && \
    apt-get install -y --no-install-recommends ruby-dev && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN gem install md2review

CMD ["md2review"]