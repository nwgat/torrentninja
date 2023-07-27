# TorrentNinja
* `git clone https://github.com/nwgat/torrentninja`
* `cd alpine && docker build -t torrentninja .` or `cd ubuntu && docker build -t torrentninja .`
* `docker run -d --name torrentninja -v /home/$USER/ntconf:/root/.config -v /home/$USER/ntdata:/root/Downloads -p 6881:6881 -p 8112:8112 -p 58846:58846 torrentninja:latest`
* `docker exec -it torrentninja supervisorctl status`

| OS | Size |---|
|--------|---|---|
| Alpine | 329MB | works without ntfy |
| Ubuntu | 792MB | works |

Control with supervisor start,stop and restart, check log with tail -f deluged
* docker exec -it torrentninja supervisorctl restart deluged


| Package | Installed | notes |
|--------|---| --- | 
| deluged | yes | deluge daemon |
| deluge-web | yes | change password! Deluge webui on port 8112|
| flexget | yes | modify /config/flexget/config.yml to start|
| ntfy | yes | notify tool that works wonderfully with flexget  |
| Supervisor | yes | A Process Control System |


