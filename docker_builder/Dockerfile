FROM php:7.4-apache

# Install xDebug
RUN pecl install xdebug && docker-php-ext-enable xdebug

# Install redis
RUN pecl install redis-4.0.1
RUN docker-php-ext-enable redis
