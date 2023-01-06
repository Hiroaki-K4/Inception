# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hkubo <hkubo@student.42tokyo.jp>           +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/12/25 16:48:29 by hkubo             #+#    #+#              #
#    Updated: 2023/01/04 23:07:38 by hkubo            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = inception

all:
	docker compose -f srcs/docker-compose.yml up --build -d

stop:
	docker compose -f srcs/docker-compose.yml stop

.PHONY: all clean stop
