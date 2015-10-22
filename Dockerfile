FROM centos:centos7
MAINTAINER Ethan 20151022
RUN yum install wget -y
RUN wget -O /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo
RUN yum update -y
RUN rpm -Uvh http://nginx.org/packages/centos/7/noarch/RPMS/nginx-release-centos-7-0.el7.ngx.noarch.rpm
RUN yum install nginx -y
RUN yum install php php-fpm -y
RUN yum install php-gd php-ldap php-mbstring php-mysql php-odbc php-pdo php-pear php-soap php-xml -y

ADD default.conf /etc/nginx/conf.d/
ADD run.sh /run.sh
RUN chmod 755 /*.ssh

ADD ./html /var/www/html

CMD ["/run.sh"]

EXPOSE 80