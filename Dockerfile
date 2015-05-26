FROM nginx
MAINTAINER Dave Barnwell <dave@freshsace.co.uk>

ADD build/default.conf   /etc/nginx/conf.d/default.conf

RUN mkdir -p /var/www/html
VOLUME /var/www

#VOLUME /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]