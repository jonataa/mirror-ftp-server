# Mirror Files Between FTP Servers

## Como Usar

```
git clone https://github.com/jonataa/mirror-ftp-server
cd mirror-ftp-server
docker build -t jonataa/lftp .
sh transfer.sh ftp://bob:123456@localhost:21/source_folder ftp://alice:123456@localhost:21/target_folder
```

[![asciicast](https://asciinema.org/a/aZOIlSeS2x6s9ev6S1McqNRmW.png)](https://asciinema.org/a/aZOIlSeS2x6s9ev6S1McqNRmW)
