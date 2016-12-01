FROM ubuntu
MAINTAINER Marc Despland <marc.despland@orange.com>
RUN apt-get update && apt-get install -y apache2 php libapache2-mod-php php-mcrypt php-mysql
RUN ln -s /etc/apache2/mods-available/rewrite.load /etc/apache2/mods-enabled/rewrite.load
RUN mkdir -p /var/run/apache2; mkdir -p /var/lock/apache2
COPY 000-default.conf /etc/apache2/sites-available/
EXPOSE 80
CMD . /etc/apache2/envvars; /usr/sbin/apache2 -DFOREGROUND
