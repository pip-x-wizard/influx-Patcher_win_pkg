# influxdb_win_pkg
InfluxDB Windows Packager

# usage

```
docker build -t influxdb/winbuild .
```
```
docker run -v ~/vmshare:/vmshare -i -t influxdb/winbuild /package_windows.sh
```
