# Usa la imagen base de PHP 8.0 FPM
FROM php:8.0-fpm

# Instala dependencias necesarias para Composer
RUN apt-get update && \
    apt-get install -y wget git unzip

# Descarga e instala Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
