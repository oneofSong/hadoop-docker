#!/bin/sh
set -e

if [ $# -gt 0 ]; then
    HADOOP_VERSION=$1
    if [ $# -gt 1 ]; then
        HADOOP_TAG=$2
    else
        HADOOP_TAG=${HADOOP_TAG:-"latest"}
    fi
    HBASE_VERSION=$3
fi

if [ -z ${HADOOP_VERSION+x} ]; then
  echo "Must define HADOOP_VERSION enviroment variable, or pass as first argument"
  exit 1
fi

for i in hadoop namenode datanode hbase; do
    echo Building $i

    if [ "$i" != "hbase" ]; then
         [ "$i" = "hadoop" ] && name="hadoop" || name="hadoop-$i"
         ( cd $i && docker build --build-arg HADOOP_VERSION=$HADOOP_VERSION --build-arg HADOOP_TAG=$HADOOP_TAG -t $name:$HADOOP_TAG . )
    else
         ( cd $i && docker build --build-arg HADOOP_VERSION=$HADOOP_VERSION --build-arg HADOOP_TAG=$HADOOP_TAG --build-arg HBASE_VERSION=$HBASE_VERSION -t hbase:$HBASE_VERSION . )
    fi
done
