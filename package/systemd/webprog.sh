#!/bin/bash
#
# этот скрипт нужен для правильного порождения демона 
#

PROG_DIR=/opt/webprog/app

case "$1" in
    start)
    
	nohup java -jar ${PROG_DIR}/webprog.jar >/var/log/webprog/webprog.log 2>/var/log/webprog/webprog-errors.log </dev/null &
	PID=$!

	echo $PID >/var/run/webprog/webprog.pid
	echo

    ;;
    *)

        echo "Usage: webprog start via systemctl"
        exit 1

    ;;
esac
