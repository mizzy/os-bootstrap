#!/bin/sh

sudo rpm -Uvh http://apt.sw.be/redhat/el6/en/x86_64/rpmforge/RPMS/rpmforge-release-0.5.2-2.el6.rf.x86_64.rpm

sudo yum install -y gcc gcc-c++ make 
sudo yum install -y zlib-devel openssl-devel
sudo yum install -y keychain
sudo yum install -y db4-devel libxml2-devel expat-devel libxslt-devel

exec $SHELL

