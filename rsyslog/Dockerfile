FROM ubuntu
MAINTAINER Marc Despland <marc.despland@orange.com>
RUN apt-get update && apt-get install -y rsyslog vim net-tools tcpdump
COPY rsyslog.conf /etc/
CMD /usr/sbin/rsyslogd -n
