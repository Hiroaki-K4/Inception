# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hkubo <hkubo@student.42tokyo.jp>           +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/01/02 21:15:48 by hkubo             #+#    #+#              #
#    Updated: 2023/01/03 17:46:10 by hkubo            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

RUN apt-get update && apt-get install -y \
    php \
    php-fpm \
    php-mysql \
    php-mbstring \
    wget

# Setup wordpress
RUN wget https://wordpress.org/latest.tar.gz && \
    tar -xvzf latest.tar.gz && rm -rf latest.tar.gz && \
    mkdir -p /var/www/html && \
    mv wordpress /var/www/html

COPY ./tools /var/www

RUN chmod +x /var/www/prepare_wordpress.sh  && \
    bash /var/www/prepare_wordpress.sh

EXPOSE 9000
