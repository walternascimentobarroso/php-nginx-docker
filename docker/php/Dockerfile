# Image and version
FROM php:8.3-fpm

# Install dependencies
RUN apt update && \
    apt install --no-install-recommends -y \
    zlib1g-dev \
    libpng-dev \
    libzip-dev \
    unzip

# Call PHP images script `docker-php-ext-install` and install language extensions
RUN docker-php-ext-install \
    mysqli \
    pdo \
    pdo_mysql \
    zip

# Enable PHP extensions with `docker-php-ext-enable`
RUN docker-php-ext-enable \
    pdo_mysql

# copy the Composer PHAR from the Composer image into the PHP image
COPY --from=composer /usr/bin/composer /usr/bin/composer

# Install xdebug
RUN pecl install xdebug && docker-php-ext-enable xdebug
COPY xdebug.ini /usr/local/etc/php/conf.d/xdebug.ini

# Override the default PHP configuration with custom php.ini
COPY overrides.ini /usr/local/etc/php/conf.d/overrides.ini

# Clean the image
RUN apt -y autoremove && \
    apt clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/temp/*
