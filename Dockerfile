FROM java:alpine

EXPOSE 8080

COPY ./docker-entrypoint.sh /usr/local/bin

RUN chmod +x /usr/local/bin/*

COPY ./repo/build/libs/webprog.jar /tmp

ENTRYPOINT ["docker-entrypoint.sh"]
