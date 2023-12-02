FROM ubuntu
RUN apt update -y
ENV DEBIAN_FRONTEND noninteractive
ENV DEBCONF_NONINTERACTIVE_SEEN true
RUN apt install apache2 sudo php php-mysql libapache2-mod-php -y
COPY index.html /var/www/html
CMD ["apache2ctl", "-D", "FOREGROUND"]