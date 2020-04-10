FROM centos:${CENTOS_VERSION}

RUN yum update -y

RUN yum install -y gcc gcc-c++ make python3 python3-devel

RUN yum clean all

RUN pip3 install nuitka
RUN yum install -y chrpath

ADD ./nuitka.sh /

RUN mkdir /app

WORKDIR /app

ENTRYPOINT ["/nuitka.sh"]
