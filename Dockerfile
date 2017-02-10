FROM ubuntu:xenial
MAINTAINER Tsiry Sandratraina

WORKDIR /build
RUN apt-get update -y
RUN apt-get install -y  curl
RUN curl https://get.parity.io -Lk > get-parity.sh
RUN sed -i "s/setup_0.12/setup_6.x/g" get-parity.sh
RUN chmod a+x get-parity.sh
RUN ./get-parity.sh
