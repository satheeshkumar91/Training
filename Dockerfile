FROM centos
RUN yum install httpd -y
COPY ./sample.html /var/www/html/
CMD [“usr/bin/httpd”, “-D”, “FOREGROUND”]
EXPOSE 80
