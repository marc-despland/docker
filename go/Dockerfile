FROM ubuntu
MAINTAINER Marc Despland <marc.despland@orange.com>
RUN apt-get update && apt-get install -y golang git bzr mercurial subversion
COPY swagger /usr/bin/
RUN chmod a+rx /usr/bin/swagger
RUN mkdir /app
RUN mkdir /opt/go
RUN groupadd --gid 1000 default && useradd --gid 1000 --uid 1000 -m default
RUN chown -R 1000:1000 /opt/go
RUN chown -R 1000:1000 /app
USER 1000
WORKDIR /app
ENV GOPATH=/app
#ENV GOROOT=/opt/go
ENV PATH=${PATH}:${GOPATH}/bin
#RUN go get -u github.com/go-swagger/go-swagger/cmd/swagger
CMD /bin/bash