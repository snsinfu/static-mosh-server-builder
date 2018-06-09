FROM alpine:3.7

RUN mkdir -p /srv/src /srv/out \
 && apk --update add alpine-sdk openssl-dev protobuf-dev ncurses-dev ncurses-static \
 && rm -rf /var/cache/apk

VOLUME /srv/out
WORKDIR /srv
COPY build.sh /root/

ENTRYPOINT /root/build.sh
