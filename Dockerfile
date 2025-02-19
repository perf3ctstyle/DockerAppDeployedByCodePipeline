FROM public.ecr.aws/nginx/nginx:1.27-alpine3.21-slim

RUN apk update && apk upgrade

COPY ./src/nginx/ /etc/nginx/
COPY ./src/static/ /var/www/html/
COPY ./data/image/ /data/image/

EXPOSE 80/tcp
EXPOSE 8080/tcp
EXPOSE 8081/tcp
