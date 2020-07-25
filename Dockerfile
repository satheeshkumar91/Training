FROM centos
RUN yum install httpd -y
RUN echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers 
USER jenkins
COPY ./sample.html /var/www/html/
CMD [“usr/bin/httpd”, “-D”, “FOREGROUND”]
EXPOSE 80
