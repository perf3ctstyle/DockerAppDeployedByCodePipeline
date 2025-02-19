FROM nginx:1.27.3-alpine

RUN apk update && apk upgrade

COPY ./src/nginx/ /etc/nginx/
COPY ./src/static/ /var/www/html/
COPY ./data/image/ /data/image/

EXPOSE 80/tcp
EXPOSE 8080/tcp
EXPOSE 8081/tcp
