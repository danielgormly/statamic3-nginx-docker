FROM php:7.4-fpm

# Install dependencies as per server requirements
# https://statamic.dev/requirements#server-requirements
# View default extensions with: docker run --rm php:7.4-fpm php -m
RUN apt-get update \
  && apt-get install -y \
    libjpeg62-turbo-dev \
    libpng-dev \
  && docker-php-ext-configure gd --with-jpeg \
  && docker-php-ext-install -j$(nproc) gd \
  && docker-php-ext-install bcmath