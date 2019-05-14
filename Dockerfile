FROM php:7.1-fpm

# Install base dependencies
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        git \
        curl \
        libz-dev \
        libssl-dev

# Install the PHP pdo_mysql extention
RUN docker-php-ext-install pdo_mysql

# Install composer
RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer

