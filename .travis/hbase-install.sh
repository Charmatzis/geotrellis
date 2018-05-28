#! /bin/bash

if [ ! -f $HOME/downloads/hbase-1.3.2-bin.tar.gz ]; then sudo wget -O $HOME/downloads/hbase-1.3.2-bin.tar.gz http://www-eu.apache.org/dist/hbase/1.3.2/hbase-1.3.2-bin.tar.gz; fi
sudo mv $HOME/downloads/hbase-1.3.2-bin.tar.gz hbase-1.3.2-bin.tar.gz && tar xzf hbase-1.3.2-bin.tar.gz
sudo rm -f hbase-1.3.2/conf/hbase-site.xml && sudo mv .travis/hbase/hbase-site.xml hbase-1.3.2/conf
sudo hbase-1.3.2/bin/start-hbase.sh
