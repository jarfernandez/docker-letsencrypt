FROM ubuntu:xenial

MAINTAINER Jose Arturo Fernandez Diaz <jarfernandez@gmail.com>

# Instala wget, descarga certbot-auto y establece permisos de ejecucion
RUN apt-get update \
    && apt-get install -y wget \
    && cd /etc \
    && wget https://dl.eff.org/certbot-auto \
    && chmod a+x certbot-auto

WORKDIR /etc
