FROM php:7.4-fpm

# Install dependencies as per server requirements
# https://statamic.dev/requirements#server-requirements
# View default extensions with: docker run --rm php:7.4-fpm php -m
RUN apt-get update \
  && apt-get install -y \
    libwebp-dev \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libpng-dev \
  && docker-php-ext-install exif \
  && docker-php-ext-install bcmath \
  && docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp \
  && docker-php-ext-install -j$(nproc) gd \