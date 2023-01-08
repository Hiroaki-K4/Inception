# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hkubo <hkubo@student.42tokyo.jp>           +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/01/02 21:15:48 by hkubo             #+#    #+#              #
#    Updated: 2023/01/06 21:52:32 by hkubo            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

RUN apt-get update && apt-get install -y \
    php \
    php-fpm \
    php-mysql \
    php-mbstring \
    wget

EXPOSE 9000

# Setup wordpress
RUN wget https://wordpress.org/latest.tar.gz && \
    tar -xvzf latest.tar.gz && rm -rf latest.tar.gz && \
    mkdir -p /var/www/html && \
    mv wordpress /var/www/html

COPY tools/* /
COPY conf/* /

RUN chmod 744 prepare_wordpress.sh

RUN mkdir /run/php

ENTRYPOINT ["/bin/bash", "prepare_wordpress.sh"]
