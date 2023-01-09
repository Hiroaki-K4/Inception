FROM alpine:3.16

RUN apk update && apk upgrade && apk add --no-cache \
    mariadb \
    mariadb-client

EXPOSE 3306

COPY conf/* /
COPY tools/* /

ENTRYPOINT ["sh", "prepare_mariadb.sh"]
