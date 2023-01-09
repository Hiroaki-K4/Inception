# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hkubo <hkubo@student.42tokyo.jp>           +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/12/25 16:48:29 by hkubo             #+#    #+#              #
#    Updated: 2023/01/09 17:43:05 by hkubo            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = inception

all: build
	docker compose -f srcs/docker-compose.yml up --build

build:
	docker compose -f srcs/docker-compose.yml build --no-cache

down:
	docker compose -f srcs/docker-compose.yml down

volume_clean:
	docker volume rm $$(docker volume ls -q)

image_clean:
	docker rmi $$(docker images -a -q)

clean:
	docker system prune -f

fclean: clean volume_clean image_clean

.PHONY: all build down volume_clean image_clean clean fclean
