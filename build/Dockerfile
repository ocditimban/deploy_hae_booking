FROM php:7.3-cli
MAINTAINER phuongbui <ghetrung1@gmail.com>

# install node js
RUN curl -sL https://deb.nodesource.com/setup_11.x  | bash -
RUN apt-get update && apt-get install -y git nodejs

# install php ext
RUN docker-php-ext-install mysqli pdo_mysql
# install mongodb ext
RUN apt-get install -y libcurl4-openssl-dev pkg-config libssl-dev
RUN pecl install mongodb \
    && docker-php-ext-enable mongodb
# install netstat to debug port
RUN apt-get install net-tools

RUN echo "memory_limit = 512 M" >> /usr/local/etc/php/php.ini \
&& echo "max_execution_time = 0"  >> /usr/local/etc/php/php.ini

# download composer and run them inside
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
# install mail
RUN curl -Lsf 'https://storage.googleapis.com/golang/go1.8.3.linux-amd64.tar.gz' | tar -C '/usr/local' -xvzf -
ENV PATH /usr/local/go/bin:$PATH
RUN go get github.com/mailhog/mhsendmail
RUN cp /root/go/bin/mhsendmail /usr/bin/mhsendmail

RUN echo 'sendmail_path = /usr/bin/mhsendmail --smtp-addr mailhog:1025' > /usr/local/etc/php/php.ini

# install node js and run them inside
WORKDIR /app

EXPOSE 90

CMD ["php", "-S", "0.0.0.0:80", "-t", "/app/HAEBooking/public"]