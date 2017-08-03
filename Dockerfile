FROM alpine:3.6
MAINTAINER hjl <jiale@implustech.com>

ENV VERSION=2.4.0
VOLUME /geoipdata
COPY update.sh /usr/local/bin/update.sh
ENTRYPOINT ["update.sh"]

RUN apk add -q --update \
        bash \
        wget \
        build-base \
        openssh-client \
        ca-certificates \
        file \
        zlib-dev \
        curl-dev \
    && wget https://github.com/maxmind/geoipupdate/releases/download/v${VERSION}/geoipupdate-${VERSION}.tar.gz \
    && tar zxvf geoipupdate-${VERSION}.tar.gz \
    && cd geoipupdate-${VERSION} \
    && ./configure \
    && make \
    && make install \
    && cd .. \
    && rm -rf ./geoipupdate-${VERSION} \
    && rm -rf /var/cache/apk/*
