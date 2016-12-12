FROM centos:latest
ADD docker.repo /etc/yum.repos.d/docker.repo
RUN yum -y update 
RUN yum -y install docker-engine
RUN curl -L https://github.com/docker/compose/releases/download/1.9.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
RUN chmod +x /usr/local/bin/docker-compose



