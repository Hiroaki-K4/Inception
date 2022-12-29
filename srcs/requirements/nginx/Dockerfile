# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hkubo <hkubo@student.42tokyo.jp>           +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/12/25 16:48:53 by hkubo             #+#    #+#              #
#    Updated: 2022/12/29 15:31:22 by hkubo            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster
RUN apt-get update && apt-get install -y \
    nginx \
    wget

COPY nginx.conf /etc/nginx/sites-available/default
# RUN rm /var/www/html/index.nginx-debian.html && chmod 744 nginx.sh

# Setup SSL
RUN wget https://github.com/FiloSottile/mkcert/releases/download/v1.4.3/mkcert-v1.4.3-linux-amd64 && \
    mv mkcert-v1.4.3-linux-amd64 mkcert && chmod +x mkcert && \
    ./mkcert -install && ./mkcert localhost && mkdir /etc/nginx/ssl && \
    mv localhost-key.pem localhost.pem /etc/nginx/ssl
