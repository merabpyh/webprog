# webprog

## requires
- centos7+
- java-1.7.0-openjdk-devel

## usage #1
- build rpm with "app_build.sh"
- install rpm 
- http://ServerIP:8080/ping or http://ServerIP:8080/date

## note #1
systemd pid's
systemd logging
use "systemctl start|stop|restart|status webprog.service" after installation

## usage #2
- build rpm with "app_build.sh"
- run d_* scripts
  - d_run-proxy.sh
  - d_build.sh Ver
  - d_run.sh Ver
- http://ServerIP:8080/ping or http://ServerIP:8080/date

## note #2
Docker based web service, based on:
- jwilder/nginx-proxy:alpine - https://github.com/jwilder/nginx-proxy
- java:alpine

Уou can use any number of backends.
The proxy will automatically add them upstream, or will remove from there.
