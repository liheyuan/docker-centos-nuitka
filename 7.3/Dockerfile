FROM centos:7.3.1611

RUN yum update -y

RUN rpm --rebuilddb

RUN yum install -y gcc gcc-c++ make python3 python3-devel chrpath

RUN yum clean all

RUN pip3 install nuitka

ADD ./nuitka.sh /

RUN mkdir /app

WORKDIR /app

ENTRYPOINT ["/nuitka.sh"]
