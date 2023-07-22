# TorrentNinja
* `git clone https://github.com/nwgat/torrentninja && cd torrentninja`
* `docker build -t ninjatorrent .`
* `docker run -d --name ninjatorrent -p 6881:6881 -p 8112:8112 -p 58846:58846 ninjatorrent:latest`


| OS | Size |---|
|--------|---|---|
| Alpine | 474MB | work in progress|
| Ubuntu | 792MB | works |

| Package | Size |
|--------|---|
| Deluge | x |
| Flexget | x |
| ntfy | x | 
| Supervisor | x | 
