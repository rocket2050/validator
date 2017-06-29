FROM williamyeh/ansible:ubuntu16.04

RUN apt-get update && apt-get -y install git
RUN git clone https://github.com/opstree-ansible/java.git /etc/ansible/roles/java
RUN git clone https://github.com/opstree-ansible/tomcat7.git /etc/ansible/roles/tomcat7

ADD ansible_control /root/.ssh/id_rsa
ADD ansible_control.pub /root/.ssh/id_rsa.pub
