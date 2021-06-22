FROM php:8.0.0-fpm

USER root

WORKDIR /var/www/html

RUN apt-get update -y && apt-get install -y sendmail libpng-dev

RUN apt-get update && \
    apt-get install -y \
       zlib1g-dev \
       libzip-dev

RUN docker-php-ext-install zip

RUN docker-php-ext-install gd

RUN docker-php-ext-install pdo pdo_mysql

RUN chown -R www-data:www-data /var/www/html
