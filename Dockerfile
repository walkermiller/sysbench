FROM fedora
# RUN yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm
# RUN yum update -y && yum install -y ant git php gnuplot gcc make readline-devel zlib-devel \
#     postgresql-jdbc bzr automake libtool patch libevent-devel openssl-devel \
#     ncurses-devel wget

RUN yum install -y sysbench

ENV LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/pgsql/lib
ENV PATH=$PATH:/usr/local/pgsql/bin/

ENTRYPOINT ["sysbench"]