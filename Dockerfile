FROM centos:7

RUN yum -y install gcc
RUN yum -y install gcc-c++
RUN yum -y install python-devel
RUN yum -y install cyrus-sasl-devel
RUN yum -y install mysql-devel
COPY get-pip.py .
RUN python get-pip.py
COPY requirements.txt ./
RUN pip install -r requirements.txt

WORKDIR /usr/src/app
CMD [ "python" ]
