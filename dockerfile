FROM alpine

RUN apk add --update openssl --no-cache && \
wget -qO - http://github.com/fatedier/frp/releases/download/v0.21.0/frp_0.21.0_linux_amd64.tar.gz|tar -zxvf - && \
apk del openssl

WORKDIR /frp_0.21.0_linux_amd64

CMD ./frps
