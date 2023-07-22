COPY ninjatorrent.ini /etc/supervisor.d/
COPY config/ .config/
ADD echo "https://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories
ADD apk update
ADD apk add deluge flexget supervisor ntfy
CMD supervisord
EXPOSE