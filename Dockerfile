FROM centos:latest
MAINTAINER Magnus Persson "magnus.e.persson@gmail.com"

RUN yum install gcc make tar pam-devel file openssl-devel -y
WORKDIR /root
RUN curl -O http://mmonit.com/monit/dist/monit-5.8.1.tar.gz
RUN tar zxf monit-5.8.1.tar.gz && cd monit-5.8.1 &&  ./configure --prefix=/usr --enable-optimized && make && make install && rm -rf /root/monit
RUN yum remove gcc tar pam-devel file openssl-devel -y && yum clean all

