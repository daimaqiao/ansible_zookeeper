#!/bin/sh

zookeeper_version=3.4.9
zookeeper_name="zookeeper-$zookeeper_version"
zookeeper_pkgname="$zookeeper_name.tar.gz"
zookeeper_dlurl="http://mirrors.tuna.tsinghua.edu.cn/apache/zookeeper/$zookeeper_name/$zookeeper_pkgname"

wget $zookeeper_dlurl

