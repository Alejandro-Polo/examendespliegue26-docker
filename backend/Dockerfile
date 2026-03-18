FROM php:8.2-cli

RUN apt-get update && apt-get install -y \
    git unzip libpq-dev libpq-dev liboning-dev libzip-dev curl \
    && docker-php-ext-install pdo pdo-msql

WORKDIR /var/www

COPY . .

COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

RUN composer install
EXPOSE 8000

CMD sleep 15 && php bin/console doctribne:migration:migrate --no-interaction
    && -S 0.0.0.0:8000 -t public