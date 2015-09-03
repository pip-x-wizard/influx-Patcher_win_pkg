FROM debian:sid

RUN apt-get update && \
	apt-get install -y wixl wget git

RUN mkdir -p go/bin go/pkg go/src/github.com/influxdb

RUN wget https://storage.googleapis.com/golang/go1.5.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.5.linux-amd64.tar.gz

ENV GOPATH $HOME/go
ENV PATH $PATH:/usr/local/go/bin

ADD influxdb.wxs .
ADD package_windows.sh .
RUN chmod ug+x package_windows.sh
