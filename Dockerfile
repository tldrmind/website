FROM php:fpm-alpine

RUN apk add --no-cache nginx

COPY app/index.php /usr/share/nginx/html/
COPY data/nginx_server/nginx.conf /etc/nginx/nginx.conf

EXPOSE 80

CMD ["sh", "-c", "php-fpm & nginx -g 'daemon off;'"]
