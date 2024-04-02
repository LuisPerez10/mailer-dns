# Usa la imagen base de PHP 8.0 FPM
# FROM php:8.0-fpm

# # Instala dependencias necesarias para Composer
# RUN apt-get update && \
#     apt-get install -y wget git unzip

# # Descarga e instala Composer
# RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer



# Usa la imagen base de CentOS
FROM centos:centos7

# Actualiza el sistema e instala las herramientas necesarias
RUN yum -y update && \
    yum -y install \
    vim \
    wget \
    curl \
    tar \
    gzip \
    unzip \
    git \
    sendmail \
    mailutils \
    mailx \
    sendmail-bin \
    sendmail-cf \
    cyrus-sasl-plain\
    nano \
    make \
    php \
    && yum clean all

# Creamos el directorio /etc/mail/authinfo/ con los permisos adecuados
RUN mkdir -m 700 -p /etc/mail/authinfo/

# Establecemos el directorio /etc/mail/authinfo/ como directorio de trabajo
WORKDIR /etc/mail/authinfo/

# Define el directorio de trabajo
WORKDIR /app

# Comando por defecto al iniciar el contenedor
# CMD ["bash"]
CMD ["/usr/sbin/init"]
