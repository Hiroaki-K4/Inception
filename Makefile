# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hkubo <hkubo@student.42tokyo.jp>           +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/12/25 16:48:29 by hkubo             #+#    #+#              #
#    Updated: 2023/01/08 23:27:27 by hkubo            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = inception

# include srcs/.env

all:
	docker compose -f srcs/docker-compose.yml up --build

down:
	docker compose -f srcs/docker-compose.yml down

# volume_clean:
# 	sudo rm -rf ${VOLUME_DIR_FROM_ROOT}/frontend ${VOLUME_DIR_FROM_ROOT}/db
# 	docker volume rm $$(docker volume ls -q)

# image_clean:
# 	docker rmi $$(docker images -a -q)

clean:
	docker system prune -f

fclean: clean volume_clean image_clean

# exec_mariadb:
# 	cd srcs && docker-compose exec mariadb /bin/ash

# exec_wordpress:
# 	cd srcs && docker-compose exec wordpress /bin/ash

# exec_nginx:
# 	cd srcs && docker-compose exec nginx /bin/ash

make_dir:
	sudo mkdir -p ${VOLUME_DIR_FROM_ROOT}/frontend
	sudo mkdir -p ${VOLUME_DIR_FROM_ROOT}/db


.PHONY: all down volume_clean image_clean clean fclean exec_mariadb exec_wordpress exec_nginx make_dir
