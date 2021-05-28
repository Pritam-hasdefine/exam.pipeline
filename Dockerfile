FROM ubuntu:16.04
RUN apt-get update
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -y install apache2
RUN apt-get -y install apache2-utils
RUN apt-get clean
EXPOSE 80
CMD ["apache2ctl","-D","FOREGROUND"]
