FROM centos:latest
MAINTAINER dina_abdelhalim2018@yahoo.com
RUN sudo yum install -y httbd \
    zip\
    unzip
ADD https://www.free-css.com/assets/files/free-css-temlates/download/page254/photogenic.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip photogenic.zip
RUN cp -rvf photogenic/* .
RUN rm -rf photogenic photogenic.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
