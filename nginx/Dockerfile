FROM nginx
MAINTAINER Marc Despland <marc.despland@orange.com>
COPY default.conf /etc/nginx/conf.d/
RUN chmod a=rwx /var/cache/nginx; chmod a=rwx /var/run/; chmod a=rwx /var/log/nginx
EXPOSE 8080
