FROM williamyeh/ansible:ubuntu16.04

RUN apt-get update && apt-get -y install git sudo
RUN git clone https://github.com/opstree-ansible/java.git /etc/ansible/roles/java
RUN git clone https://github.com/opstree-ansible/tomcat7.git /etc/ansible/roles/tomcat7
RUN git clone https://github.com/opstree-ansible/Nginx.git /etc/ansible/roles/Nginx
RUN git clone https://github.com/opstree-ansible/mysql-server.git /etc/ansible/roles/mysql-server

RUN mkdir -p /root/.ssh/ 

COPY ansible_control /root/.ssh/id_rsa
RUN chmod 600 /root/.ssh/id_rsa
COPY ansible_control.pub /root/.ssh/id_rsa.pub
RUN chmod 644 /root/.ssh/id_rsa.pub
