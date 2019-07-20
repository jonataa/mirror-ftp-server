FROM alpine:3.7
WORKDIR /tmp
RUN apk add --no-cache lftp
ENTRYPOINT ["lftp"]
