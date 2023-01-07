FROM debian:buster

RUN apt-get update && apt-get install -y \
    mariadb-server

EXPOSE 3306

COPY conf/* /

RUN chmod 744 init_db.sql

RUN service mysql start && mysql < init_db.sql

ENTRYPOINT ["mysqld"]
