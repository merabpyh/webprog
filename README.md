# webprog

## requires
- centos7+
- java-1.7.0-openjdk-devel

## usage
- build rpm with "build.sh"
- install rpm 
-  http://ServerIP:8080/ping or http://ServerIP:8080/date

## note
use systemctl XXX webprog.service after installation


## known issues
java logs placed in the systemd journal, not in /var/log/webprog
