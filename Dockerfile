FROM centos:7
RUN yum update -y 
RUN yum install git -y
RUN yum install net-tools -y