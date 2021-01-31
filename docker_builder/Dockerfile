# Install PHP + apache
FROM php:7.4-apache
RUN apt-get update -y && apt-get upgrade -y
RUN apt-get -y install openssl libssl-dev \
    && docker-php-ext-install mysqli pdo pdo_mysql

# Install mongodb
RUN pecl config-set php_ini "${PHP_INI_DIR}/php.ini"
RUN pecl install mongodb && docker-php-ext-enable mongodb

# Install xDebug
RUN pecl install xdebug && docker-php-ext-enable xdebug

# Install redis
RUN pecl install redis-4.0.1
RUN docker-php-ext-enable redis
