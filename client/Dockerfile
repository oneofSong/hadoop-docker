ARG HADOOP_TAG
FROM hadoop:${HADOOP_TAG}

ADD examples /examples
ADD initHdfs_biuser.sh /initHdfs_biuser.sh

RUN chmod +x /initHdfs_biuser.sh
 