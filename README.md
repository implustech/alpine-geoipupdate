# Maxmind GeoIP Updater


## Usage:

Mount GeoIP.conf file to `/etc/conf/GeoIP.conf`

UserId
LicenseKey
ProductIds GeoIP2-Country

```sh

docker run --rm \
  -v $(pwd):/geoipdata \
  -v $(pwd)/GeoIP.conf:/etc/conf/GeoIP.conf \
  implustechnology/alpine-geoipupdate /etc/conf/GeoIP.conf

```
