FROM nginx:1.27-alpine

# Override at deploy: hostname only (no https://) from each backend's public URL.
ENV NGINX_RESOLVER="1.1.1.1 8.8.8.8" \
    AUTH_HOST=auth.invalid \
    PROFILE_HOST=profile.invalid \
    PROJECTS_HOST=projects.invalid \
    BLOG_HOST=blog.invalid \
    CV_HOST=cv.invalid

COPY ./templates/default.conf.template /etc/nginx/templates/default.conf.template

COPY index.php /var/www/html/index.php
