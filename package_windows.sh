#!/bin/sh

cd go/src/github.com/influxdb && git clone https://github.com/influxdb/influxdb
cd influxdb && go get -u ./... && git checkout v0.9.3 && cd cmd/influxd && GOOS=windows go build && mv influxd.exe /go/bin/

wixl /influxdb.wxs && cp /influxdb.msi /vmshare
