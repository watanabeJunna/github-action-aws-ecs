FROM php:fpm-alpine3.10

RUN adduser -h /home/appuser -D appuser
USER appuser

WORKDIR /app

COPY --chown=appuser:appuser ./app/ /app/.
RUN composer install

ENV TZ="Asia/Tokyo"

EXPOSE 8000

ENTRYPOINT ["php", "artisan", "serve", "--host=0.0.0.0"]