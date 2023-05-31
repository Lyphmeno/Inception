# syntax=docker/dockerfile:1
FROM debian:buster

#updating and installing usefull packages
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y nginx openssl

#configuration of ssl
RUN mkdir -p /etc/nginx/ssl
RUN openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -subj "/C=FR/ST=IDF/L=Paris/O=42/OU=42/CN=hlevi.42.fr/UID=hlevi"

#configuration of nginx
RUN mv /etc/nginx/nginx.conf /etc/nginx/nginx.conf.orig
COPY conf/nginx.conf /etc/nginx/nginx.conf
RUN chmod 755 /var/www/html
RUN chown -R www-data:www-data /var/www/html

RUN echo ":syntax on\n:set number\n:set tabstop=4\n:set shiftwidth=4\n:set expandtab" > /root/.vimrc
CMD ["nginx", "-g", "daemon off;"]
