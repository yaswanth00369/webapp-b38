FROM centos:7

LABEL author="YASWANTH"
LABEL date="2022-07-24"
LABEL supprort="support@example.com"

RUN yum update -y 
RUN yum install httpd -y
RUN mkdir /data
RUN useradd Devops

COPY index.html /var/www/html

ENTRYPOINT [ "apachectl", "-DFOREGROUND" ]

EXPOSE 80

ARG Hellow=We_are_mergers_of_different_envs

ENV $ {Hellow}

WORKDIR /data

RUN echo "Welcome to Node.js" > file

VOLUME /data

USER Devops