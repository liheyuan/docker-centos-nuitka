FROM centos:7.5.1804

RUN yum update -y

RUN yum install -y gcc gcc-c++ make python3 python3-devel chrpath || true

RUN yum clean all

RUN pip3 install nuitka

ADD ./nuitka.sh /

RUN mkdir /app

WORKDIR /app

ENTRYPOINT ["/nuitka.sh"]
