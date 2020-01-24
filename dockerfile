FROM ubuntu:16.04
MAINTAINER JeanContreras jean123447@gmail.com
RUN apt-get update
RUN apt-get -y install apache2
RUN apt-get -y install wget 
RUN apt-get -y install unzip
RUN apt-get -y install nano
RUN apt-get -y install cmatrix
RUN wget https://github.com/BlackrockDigital/startbootstrap-freelancer/archive/gh-pages.zip
RUN unzip gh-pages.zip
RUN cp -a /startbootstrap-freelancer-gh-pages/* var/www/html
EXPOSE 82
CMD /usr/sbin/apache2ctl -D FOREGROUND
