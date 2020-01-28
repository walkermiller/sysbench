FROM fedora

RUN yum install -y sysbench

ENV LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/pgsql/lib
ENV PATH=$PATH:/usr/local/pgsql/bin/

ENTRYPOINT ["sysbench"]