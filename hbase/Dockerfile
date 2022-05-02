ARG HADOOP_TAG
FROM hadoop:${HADOOP_TAG}

ARG HADOOP_VERSION
ARG HBASE_VERSION

RUN . /functions.sh \
    && apache_install hbase/$HBASE_VERSION/hbase-${HBASE_VERSION}-bin.tar.gz hbase/KEYS \
    && ln -s /opt/hbase-${HBASE_VERSION} /etc/hbase \
    && ln -s /opt/hbase-$HBASE_VERSION /opt/hbase
