FROM ubuntu:16.04

WORKDIR /app

RUN apt-get update

RUN apt-get install -y git && apt-get install -y apache2 

ADD . /app

RUN cp -r index.html /var/www/html/index.html

EXPOSE 80
CMD apachectl -D FOREGROUND

