FROM iron/go 
MAINTAINER Máximo Cuadros <mcuadros@gmail.com>

RUN mkdir -p ${GOPATH}/bin
ADD ./build/ofelia_linux_amd64/ ${GOPATH}/bin
WORKDIR ${GOPATH}/bin

VOLUME /etc/ofelia/
CMD ["ofelia", "daemon", "--config", "/etc/ofelia/config.ini"]
