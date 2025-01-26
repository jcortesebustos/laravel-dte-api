# Archivo Dockerfile (de la carpeta /infrastructure/php/Dockerfile)
FROM php:7.4.33-fpm as base 
# Usa la imagen base php:7.4.33-fpm y la nombra como 'base'

ARG UID=1000 
# Define el argumento UID con valor por defecto 1000
RUN adduser deploy --disabled-password --home /home/deploy --uid $UID 
# Crea un usuario 'deploy' con el UID especificado

# Actualiza los repositorios e instala paquetes
RUN apt-get update && \ 
    apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg2 \
    software-properties-common && \
    apt-get install -y docker.io
# Instala Docker dentro del contenedor

RUN usermod -aG docker deploy 
# Agrega el usuario 'deploy' al grupo 'docker'

# Instala el cliente de MySQL
# Instala el cliente de PostgreSQL
# Instala wget
# Instala libxml2-dev
# Instala unzip
RUN apt-get update && apt-get install -y default-mysql-client \
    && apt-get install -y postgresql-client \ 
    && apt-get install -y wget \ 
    && apt-get install -y libxml2-dev \ 
    && apt-get install -y unzip 

# Instala dependencias para GD
# Instala libxslt-dev
# Configura la extensión GD
# Instala la extensión GD
# Instala la extensión opcache (comentada)
# Instala la extensión zip
# Instala la extensión soap
# Instala la extensión xsl
# Instala la extensión pdo_mysql
RUN apt-get update && apt-get install -y \ 
    libfreetype-dev \
    libjpeg62-turbo-dev \
    libpng-dev \
    libzip-dev \
    && apt-get install -y libxslt-dev \ 
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install -j$(nproc) gd \ 
    #&& docker-php-ext-install -j$(nproc) opcache \ 
    && docker-php-ext-install -j$(nproc) zip \
    && docker-php-ext-install -j$(nproc) soap \ 
    && docker-php-ext-install -j$(nproc) xsl \ 
    && docker-php-ext-install -j$(nproc) pdo_mysql 

# Instala la extensión redis
# Elimina archivos temporales
# Habilita la extensión redis
RUN pecl install redis \ 
    &&  rm -rf /tmp/pear \ 
    &&  docker-php-ext-enable redis 

# Instala y habilita mysqli-bcmath-IMAP
# Configura la extensión IMAP
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli 
RUN docker-php-ext-install bcmath && docker-php-ext-enable bcmath 
RUN apt-get update && apt-get install -y libc-client-dev libkrb5-dev && rm -r /var/lib/apt/lists/* 
RUN docker-php-ext-configure imap --with-kerberos --with-imap-ssl \ 
    && docker-php-ext-install imap 

# Define la versión de Composer
ARG COMPOSER_VERSION=2.5.8 
# Descarga Composer
RUN wget -O /usr/bin/composer https://github.com/composer/composer/releases/download/$COMPOSER_VERSION/composer.phar && \ 
    # Hace Composer ejecutable
    chmod +x /usr/bin/composer 


# Crea una nueva imagen 'dev' basada en 'base'
FROM base as dev 
#COPY --chown=root:root /infrastructure/php/development/ext/opcache.ini /usr/local/etc/php/conf.d/opcache.ini # Copia la configuración de opcache (comentada)

RUN apt-get update && apt-get install -y procps && rm -rf /var/lib/apt/lists/* 
# Instala procps

ARG NODE_VERSION=16 
# Define la versión de Node.js
RUN mkdir -p /etc/apt/keyrings && apt-get update && apt-get install -y ca-certificates curl gnupg \ 
    # Instala dependencias para Node.js
    && curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key|gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg \ 
    # Agrega la llave GPG de Node.js
    && echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_$NODE_VERSION.x nodistro main"|tee /etc/apt/sources.list.d/nodesource.list \ 
    # Agrega el repositorio de Node.js
    && apt-get update && apt-get install -y nodejs 
# Instala Node.js

RUN usermod -aG docker deploy 
# Agrega el usuario 'deploy' al grupo 'docker'

USER deploy 
# Cambia al usuario 'deploy'

RUN composer global require laravel/vapor-cli --update-with-dependencies 
# Instala Laravel Vapor CLI globalmente

ENV PATH="/home/deploy/.config/composer/vendor/bin:${PATH}" 
# Define la variable de entorno PATH

FROM dev as build 
# Crea una nueva imagen 'build' basada en 'dev'
USER deploy 
# Cambia al usuario deploy antes de crear el directorio

RUN mkdir -p /build 
# Crea el directorio /build

RUN chown -R deploy:deploy /build 
# Cambia el propietario del directorio /build

RUN usermod -aG docker deploy 
# Agrega el usuario 'deploy' al grupo 'docker'

USER deploy 
# Cambia al usuario 'deploy'

COPY --chown=deploy:deploy ./package.json ./package-lock.json /build/ 
# Copia archivos de npm
COPY --chown=deploy:deploy ./tailwind.config.js /build/ 
# Copia la configuración de Tailwind
COPY --chown=deploy:deploy ./composer.json ./composer.lock ./artisan /build/ 
# Copia archivos de Composer y Artisan
COPY --chown=deploy:deploy ./public  /build/public 
# Copia el directorio public
COPY --chown=deploy:deploy ./resources  /build/resources 
# Copia el directorio resources

WORKDIR /build 
# Define el directorio de trabajo

RUN npm install 
# Instala dependencias de npm

RUN composer install --no-scripts 
# Instala dependencias de Composer

RUN npm run build 
# Ejecuta el script de build de npm

USER root 
# Cambia al usuario root

FROM base as prod 
# Crea una nueva imagen 'prod' basada en 'base'

COPY --chown=deploy:deploy . /home/deploy/laravel 
# Copia el código fuente a /home/deploy/laravel

#COPY --chown=deploy:deploy ./composer.json ./artisan /home/deploy/laravel/ # Copia archivos de Composer y Artisan (comentada)
#COPY --chown=root:root /infrastructure/php/production/ext/opcache.ini /usr/local/etc/php/conf.d/opcache.ini # Copia la configuración de opcache (comentada)

COPY --chown=deploy:deploy --from=build /build/public/build /home/deploy/laravel/public/build 
# Copia los assets compilados
#COPY --chown=deploy:deploy --from=build /build/vendor /home/deploy/laravel/vendor # Copia el directorio vendor (comentada)
#COPY --chown=deploy:deploy --from=build /build/node_modules /home/deploy/laravel/node_modules # Copia el directorio node_modules (comentada)

#RUN export PATH="$PATH:/root/.config/composer/vendor/laravel/vapor-cli" # Define la variable de entorno PATH (comentada)

RUN usermod -aG docker deploy 
# Agrega el usuario 'deploy' al grupo 'docker'

USER deploy 
# Cambia al usuario 'deploy'

EXPOSE 9000 
# Expone el puerto 9000