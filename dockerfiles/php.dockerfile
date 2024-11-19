FROM php:8.2-fpm-alpine
# set working directory
WORKDIR /var/www/html
# install pdo and pdo_mysql
RUN docker-php-ext-install pdo pdo_mysql
RUN addgroup -g 1000 laravel && adduser -G laravel -g laravel -s /bin/sh -D laravel
USER laravel
