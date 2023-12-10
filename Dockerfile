FROM ubuntu:14.04
MAINTAINER prafulkaware2547@gmail.com
RUN apt-get install apache2 -y \
    zip \
    unzip 
ADD https://www.free-css.com/assets/files/free-css-templates/download/page294/rent4u.zip /var/www/html
WORKDIR /var/www/html
RUN unzip rent4u.zip
RUN cp -rvf rent4u-html/*
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
