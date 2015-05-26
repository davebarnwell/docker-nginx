# docker nginx container

  This container can be found pre-built on docker hub as freshsauce/nginx
  https://registry.hub.docker.com/u/freshsauce/nginx/
  
  It's designed to run nginx with php running in another container as php:9000
  such as a container built using image freshsauce/php5-fpm-redis

  - Based on official nginx
  - exposes port 80
  - volume /var/www web root is /var/www/html
  - expects a php-fpm instance to be running before it's started with an alais of php on port 9000
  - sets the default host conf to build/default.conf which is added to the container

## Pull or build
  
    docker pull freshsauce/nginx

  Or build under your own username on docker

    docker build -t {image-tag} .
  
## Run up with
  
    docker run --name web -v /host/web/html:/var/www/html \
      --link php:php -p 80:80 -d {image-tag}

  - links port 80 to local host
  - mounts host directory /host/web/html as /var/www/html in the container
  - links a php-fpm container listening on port 9000 into the nginx container as host named php
