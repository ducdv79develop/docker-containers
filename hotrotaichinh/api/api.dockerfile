# api.dockerfile
FROM php:7.0.17-fpm

RUN apt-get update && apt-get install -y libmcrypt-dev libpq-dev \
    libmagickwand-dev --no-install-recommends \
    && pecl install imagick \
    && docker-php-ext-configure mysql -with-mysql=/usr/local/mysql \
    && docker-php-ext-enable imagick \
    && docker-php-ext-install mcrypt pdo pdo_mysql mysql

RUN mkdir /docker-containers