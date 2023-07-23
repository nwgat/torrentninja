# TorrentNinja
* `git clone https://github.com/nwgat/torrentninja && cd torrentninja`
* `docker build -t ninjatorrent .`
* `docker run -d --name ninjatorrent -v /home/$USER/ntconf:/root/.config -p 6881:6881 -p 8112:8112 -p 58846:58846 ninjatorrent:latest`


| OS | Size |---|
|--------|---|---|
| Alpine | 329MB | works |
| Ubuntu | 792MB | works |


| Package | Installed | notes |
|--------|---| --- | 
| Deluge | yes | |
| Flexget | yes | needs ./root/config/flexget/config.yml to start|
| ntfy | yes | |
| Supervisor | yes | |
