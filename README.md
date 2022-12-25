# Inception

## Introduction
This project aims to broaden your knowledge of system administration by using Docker.
You will virtualize several Docker images, creating them in your new personal virtual machine.

## Mandatory part
This project consists in having you set up a small infrastructure composed of different
services under specific rules. The whole project has to be done in a virtual machine. You
have to use docker-compose.

Each Docker image must have the same name as its corresponding service.
Each service has to run in a dedicated container.
For performance matters, the containers must be built either from the penultimate stable
version of Alpine Linux, or from Debian Buster. The choice is yours.
You also have to write your own Dockerfiles, one per service. The Dockerfiles must
be called in your docker-compose.yml by your Makefile.
It means you have to build yourself the Docker images of your project. It is then forbidden to pull ready-made Docker images, as well as using services such as DockerHub
(Alpine/Debian being excluded from this rule).

You then have to set up:
- A Docker container that contains NGINX with TLSv1.2 or TLSv1.3 only.
- A Docker container that contains WordPress + php-fpm (it must be installed and configured) only without nginx.
- A Docker container that contains MariaDB only without nginx.
- A volume that contains your WordPress database.
- A second volume that contains your WordPress website files.
- A docker-network that establishes the connection between your containers.

Your containers have to restart in case of a crash

- In your WordPress database, there must be two users, one of them being the administrator. The administrator’s username can’t contain admin/Admin or administrator/Administrator (e.g., admin, administrator, Administrator, admin-123, and so forth).

To make things simpler, you have to configure your domain name so it points to your local IP address.
This domain name must be login.42.fr. Again, you have to use your own login.
For example, if your login is wil, wil.42.fr will redirect to the IP address pointing to wil’s website.

Here is an example diagram of the expected result:
![inception](https://user-images.githubusercontent.com/51109408/208291025-eb56c6f3-3dc3-48fd-b9cd-85234a8b13b3.png)

docker compose build
docker compose run nginx bash