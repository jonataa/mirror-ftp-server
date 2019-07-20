# Mirror FTP Servers

## Como usar

```
git clone https://github.com/jonataa/mirror-ftp-server
cd mirror-ftp-server
docker build -t jonataa/lftp .
sh transfer.sh ftp://bob:123456@localhost:211/source_folder ftp://alice:123456@localhost:211/target_folder
```
