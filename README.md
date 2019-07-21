# Mirror Files Between FTP Servers

## Demo

![](demo.gif)

## How Install

```
git clone https://github.com/jonataa/mirror-ftp-server
cd mirror-ftp-server
docker build -t jonataa/lftp .
sh transfer.sh ftp://bob:123456@localhost:21/source_folder ftp://alice:123456@localhost:21/target_folder
```
