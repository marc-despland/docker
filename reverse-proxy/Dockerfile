FROM ubuntu
MAINTAINER Marc Despland <marc.despland@orange.com>
RUN apt-get update && apt-get install -y apache2
RUN ln -s /etc/apache2/mods-available/proxy.load /etc/apache2/mods-enabled/proxy.load
RUN ln -s /etc/apache2/mods-available/proxy_http.load /etc/apache2/mods-enabled/proxy_http.load
RUN ln -s /etc/apache2/mods-available/rewrite.load /etc/apache2/mods-enabled/rewrite.load
RUN mkdir -p /var/run/apache2; mkdir -p /var/lock/apache2
RUN update-rc.d apache2 disable
COPY 000-default.conf /etc/apache2/sites-available/
EXPOSE 80
CMD . /etc/apache2/envvars; /usr/sbin/apache2 -DFOREGROUND
