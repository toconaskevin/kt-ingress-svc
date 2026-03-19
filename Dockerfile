FROM nginx:1.27-alpine

COPY ./nginx.conf /etc/nginx/conf.d

COPY index.php /var/www/html/index.php
