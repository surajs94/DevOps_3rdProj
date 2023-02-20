# FROM centos:latest
# MAINTAINER brand293245222@gmail.com
# RUN yum install -y httpd \
#   zip \
#   unzip
# ADD https://www.free-css.com/assets/files/free-css-templates/download/page247/kindle.zip /var/www/html/
# WORKDIR /var/www/html
# RUN unzip kindle.zip
# RUN cp -rvf markups-kindle/* .
# RUN rm -rf __MACOSX markups-kindle kindle.zip
# CMD ["/usr/sbin/httpd", "-D", "FOREGROUND" ]
# EXPOSE 80





# FROM centos:latest
# MAINTAINER brand293245222@gmail.com
# RUN yum install -y httpd \
#   zip \
#   unzip
# ADD https://www.free-css.com/assets/files/free-css-templates/download/page247/kindle.zip /var/www/html/
# WORKDIR /var/www/html
# RUN unzip kindle.zip
# RUN cp -rvf markups-kindle/* .
# RUN rm -rf __MACOSX markups-kindle kindle.zip
# CMD ["/usr/sbin/httpd", "-D", "FOREGROUND" ]
# EXPOSE 80










FROM centos:latest
MAINTAINER brand293245222@gmail.com
RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*
RUN dnf distro-sync -y
# RUN dnf -y install java
RUN yum install -y httpd \
  zip \
  unzip
<<<<<<< HEAD
ADD https://www.free-css.com/assets/files/free-css-templates/download/page265/shine.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip shine.zip
RUN cp -rvf shine/* .
RUN rm -rf shine shine.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND" ]
EXPOSE 80
