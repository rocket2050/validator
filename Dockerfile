FROM williamyeh/ansible:ubuntu16.04

RUN apt-get update && apt-get -y install git
RUN git clone https://github.com/opstree-ansible/tomcat7.git /etc/ansible/roles/tomcat7
