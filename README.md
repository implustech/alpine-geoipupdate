# Maxmind GeoIP Updater


## Usage:

Volume geoip config file to `/etc/conf/GeoIP.conf`

```sh

docker run --rm \
  -v $(pwd):/geoipdata \
  -v $(pwd)/GeoIP.conf:/etc/conf/GeoIP.conf \
  implustechnology/alpine-geoipupdate /etc/conf/GeoIP.conf

```
