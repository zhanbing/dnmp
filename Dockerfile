FROM php:7-fpm-alpine

COPY composer.sh /composer.sh

RUN chmod +x /composer.sh && /composer.sh

RUN docker-php-ext-install bcmath \
                            pdo_mysql \