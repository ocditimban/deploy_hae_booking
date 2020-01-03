FROM php:7.3-cli
MAINTAINER phuongbui <ghetrung1@gmail.com>

RUN docker-php-ext-install mysqli pdo pdo_mysql curl fileinfo mbstring openssl pdo_mysql mongodb

RUN echo "memory_limit = 512 M" >> /usr/local/etc/php/php.ini \
&& echo "max_execution_time = 0"  >> /usr/local/etc/php/php.ini

# download composer and run them inside
# install node js and run them inside
WORKDIR /app

EXPOSE 81

CMD ["php", "-S", "0.0.0.0:80", "-t", "/app"]