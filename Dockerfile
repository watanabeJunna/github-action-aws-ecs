FROM php:alpine3.10

ENV COMPOSER_ALLOW_SUPERUSER 1

RUN apk --no-cache update && apk add --no-cache wget git unzip

RUN EXPECTED_SIGNATURE="$(wget -q -O - https://composer.github.io/installer.sig)" && \
    php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && \
    ACTUAL_SIGNATURE="$(php -r "echo hash_file('sha384', 'composer-setup.php');")" && \
    [ "$EXPECTED_SIGNATURE" != "$ACTUAL_SIGNATURE" ] && { \
    >&2 echo 'ERROR: Invalid installer signature' && \
    rm composer-setup.php && \
    exit 1;\
    }; \
    php composer-setup.php --quiet && \
    mv ./composer.phar /usr/local/bin/composer

CMD ["composer"]