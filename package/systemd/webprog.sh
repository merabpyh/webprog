#!/bin/bash
#
# писалось со скриптов под init.d - 
# проверки в ифах ненужны -
# юсадж в конце тоже ненужен 
#

PROG_DIR=/opt/webprog/app

case "$1" in
    start)

	if [ -f /var/run/webprog/webprog.pid ]; then
            echo "webprog is running... ";
            exit 0
        fi

	echo -n "Starting webprog: "

	nohup java -jar ${PROG_DIR}/webprog.jar >/var/log/webprog/webprog.log 2>/var/log/webprog/webprog-errors.log </dev/null &
	PID=$!

	echo $PID >/var/run/webprog/webprog.pid
	echo

    ;;
    stop)

        echo -n "Stopping webprog: "

        if [ ! -f /var/run/webprog/webprog.pid ]; then
		echo "webprog is not running... ";
   		exit 0
	fi

	PID=$(cat /var/run/webprog/webprog.pid)
	kill $PID
	rm -f /var/run/webprog/webprog.pid

        echo

    ;;
    *)

        echo "Usage: webprog {start|stop}"
        exit 1

    ;;
esac
