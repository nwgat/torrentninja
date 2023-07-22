FROM alpine:latest
COPY ninjatorrent.ini /etc/supervisor.d/
COPY config/ .config/
RUN echo "https://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories
RUN apk update
RUN apk add deluge flexget supervisor ntfy
CMD supervisord
