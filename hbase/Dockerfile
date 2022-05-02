ARG HADOOP_TAG
FROM hadoop:${HADOOP_TAG}

ARG HADOOP_VERSION
ARG HBASE_VERSION

RUN . /functions.sh \
    && apache_install hbase/$HBASE_VERSION/hbase-${HBASE_VERSION}-bin.tar.gz hbase/KEYS \
    && ln -s /opt/hbase-${HBASE_VERSION} /etc/hbase \
    && ln -s /opt/hbase-$HBASE_VERSION /opt/hbase



#ENV HDFS_CONF_dfs_namenode_name_dir=file:///hadoop/dfs/name
#RUN mkdir -p /hadoop/dfs/name
#VOLUME /hadoop/dfs/name

#ADD run.sh /run.sh
#RUN chmod a+x /run.sh

#CMD ["/run.sh"]
