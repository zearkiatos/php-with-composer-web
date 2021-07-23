
FROM php:8-cli

RUN apt-get update && \
yes | apt-get install wget

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && \
    HASH="$(wget -q -O - https://composer.github.io/installer.sig)" && \
    php -r "if (hash_file('SHA384', 'composer-setup.php') === '$HASH') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;" && \
    php composer-setup.php --install-dir=/usr/local/bin --filename=composer && \
    composer
 
# RUN mv composer.phar /usr/local/bin/composer

COPY . .

RUN wget https://get.symfony.com/cli/installer -O - | bash && \
    mv /root/.symfony/bin/symfony /usr/local/bin/symfony && \
    symfony server:ca:install

EXPOSE 8000

CMD symfony server:start --allow-http --no-tls --port=8000