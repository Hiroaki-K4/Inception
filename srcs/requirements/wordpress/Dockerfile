# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hkubo <hkubo@student.42tokyo.jp>           +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/01/02 21:15:48 by hkubo             #+#    #+#              #
#    Updated: 2023/01/02 23:14:54 by hkubo            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

RUN apt-get update && apt-get install -y \
    php \
    php-fpm \
    wget

# Setup wordpress
RUN wget https://wordpress.org/latest.tar.gz && \
    tar -xvzf latest.tar.gz && rm -rf latest.tar.gz && \
    mkdir -p /var/www/html && \
    mv wordpress /var/www/html
COPY wp-config.php /var/www/html/wordpress

EXPOSE 9000
