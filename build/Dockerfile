FROM php:7.3-cli
MAINTAINER phuongbui <ghetrung1@gmail.com>

# download source code from git
RUN curl -sL https://deb.nodesource.com/setup_11.x  | bash -
RUN apt-get update && apt-get install -y git nodejs

# install php ext
RUN docker-php-ext-install mysqli pdo_mysql
# install mongodb ext
RUN pecl install mongodb \
    && docker-php-ext-enable mongodb

RUN echo "memory_limit = 512 M" >> /usr/local/etc/php/php.ini \
&& echo "max_execution_time = 0"  >> /usr/local/etc/php/php.ini

# download composer and run them inside
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
#  - - - - - - - - - - This quick hack invalidates the cache - - - - - - - - - -
ADD https://www.google.com /time.now
# download composer and run them inside
# RUN git clone --progress --verbose https://github.com/ocditimban/message > /dev/null
#RUN git clone -q https://github.com/ocditimban/message.git

# install node js and run them inside
WORKDIR /app

EXPOSE 90

CMD ["php", "-S", "0.0.0.0:80", "-t", "/app"]