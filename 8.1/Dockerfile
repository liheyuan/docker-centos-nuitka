FROM centos:8.1.1911

RUN yum install -y gcc gcc-c++ make python3 python3-devel chrpath || true

RUN yum clean all

RUN pip3 install nuitka

ADD ./nuitka.sh /

RUN mkdir /app

WORKDIR /app

ENTRYPOINT ["/nuitka.sh"]
