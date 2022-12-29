# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hkubo <hkubo@student.42tokyo.jp>           +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/12/25 16:48:53 by hkubo             #+#    #+#              #
#    Updated: 2022/12/29 17:10:08 by hkubo            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster
RUN apt-get update && apt-get install -y \
    nginx \
    wget

# Setup nginx
COPY nginx.conf /etc/nginx/sites-available/default
COPY container_init.sh /
# RUN rm /var/www/html/index.nginx-debian.html && chmod 744 nginx.sh

# Setup SSL
RUN wget https://github.com/FiloSottile/mkcert/releases/download/v1.4.3/mkcert-v1.4.3-linux-amd64 && \
    mv mkcert-v1.4.3-linux-amd64 mkcert && chmod +x mkcert && \
    ./mkcert -install && ./mkcert localhost && mkdir /etc/nginx/ssl && \
    mv localhost-key.pem localhost.pem /etc/nginx/ssl

EXPOSE 80 443
# RUN chmod 744 container_init.sh
# CMD /bin/bash container_init.sh
ENTRYPOINT ["nginx", "-g", "daemon off;"]
