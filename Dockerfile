FROM ubuntu:22.04

RUN apt update -y && apt install software-properties-common -y
RUN add-apt-repository ppa:deluge-team/stable -y
RUN apt update && apt install deluged deluge-web python3-pip supervisor -y
RUN pip3 install flexget ntfy

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

EXPOSE 6881
EXPOSE 8112
EXPOSE 58846

CMD ["/usr/bin/supervisord"]
