FROM alpine:latest
COPY torrentninja.ini /etc/supervisor.d/
COPY config/ .config/
RUN echo "https://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories
RUN apk update
RUN apk add deluge flexget supervisor py3-pip nano
RUN pip3 install deluge-client deluge_client ntfy --break-system-packages
RUN sed -i 's/getargspec/getfullargspec/' /usr/lib/python3.11/site-packages/ntfy/__init__.py
CMD supervisord
EXPOSE 6881
EXPOSE 8112
EXPOSE 58846
