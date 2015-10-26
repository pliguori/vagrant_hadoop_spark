#!/bin/bash
source "/vagrant/scripts/common.sh"

function start-services {
	echo "starting namenode..."
	$HADOOP_PREFIX/sbin/hadoop-daemon.sh --config $HADOOP_CONF_DIR --script hdfs start namenode
	echo "starting datanode..."
	$HADOOP_PREFIX/sbin/hadoop-daemons.sh --config $HADOOP_CONF_DIR --script hdfs start datanode
}

echo "start hdfs"

start-services
