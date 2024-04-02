FROM nginx:latest

MAINTAINER sophiya.maharjan@metahorizon.com

EXPOSE 80

COPY default.conf /etc/nginx/conf.d/
COPY . /usr/share/nginx/html/

