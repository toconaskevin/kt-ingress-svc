FROM nginx:1.27-alpine

# conf.d snippets are included inside http { }; they must not contain events/http blocks.
COPY ./nginx.conf /etc/nginx/conf.d/default.conf

COPY index.php /var/www/html/index.php
