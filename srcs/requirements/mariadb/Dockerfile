FROM debian:buster

RUN apt-get update && apt-get install -y \
    mariadb-server mariadb-client

EXPOSE 3306

COPY conf/* /
COPY tools/* /

RUN chmod 744 init_db.sql
# RUN chmod 744 prepare_mariadb.sh

# RUN bash prepare_mariadb.sh
# RUN service mysql start && mysql < init_db.sql
# RUN service mysql start && mysql -u root -p < init_db.sql

# ENTRYPOINT ["/bin/bash", "prepare_mariadb.sh"]
# ENTRYPOINT ["mysqld"]
# CMD ["mysqld"]
ENTRYPOINT ["/bin/bash", "setting.sh"]
