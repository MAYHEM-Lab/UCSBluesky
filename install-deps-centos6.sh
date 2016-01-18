#!/bin/bash

HERE=`pwd`

# must be run as root

rpm --import https://www.elrepo.org/RPM-GPG-KEY-elrepo.org
rpm -Uvh http://www.elrepo.org/elrepo-release-6-6.el6.elrepo.noarch.rpm

yum -y install autoconf
yum -y install gcc gdb make
yum -y install autoconf automake build-essential cmake git-core
yum -y install boost boost-devel
yum -y install libcurl libcurl-devel
yum -y install libdb libdb-devel
yum -y install db4 db-devel
yum -y install db4 db4-devel
yum -y install libgcrypt libgcrypt-devel
yum -y install glib*
yum -y install protobuf protobuf-devel
yum -y install protobuf protobuf-devel
yum -y install libxml2 libxml2-devel
yum -y install mercurial
yum -y install java-1.6.0-openjdk java-1.6.0-openjdk-devel
yum -y install gcc-c++

cd /etc/yum.repos.d/
wget http://s3tools.org/repo/RHEL_6/s3tools.repo
yum -y install s3cmd

cd $HERE/UCSBluesky
git clone https://github.com/bji/libs3.git
