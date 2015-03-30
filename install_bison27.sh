#!/bin/bash
 
mkdir /tmp/bison
cd /tmp/bison
 
apt-get update
apt-get install -y build-essential m4
 
wget http://ftp.gnu.org/gnu/bison/bison-2.7.tar.gz
tar -xvf bison-2.7.tar.gz
rm bison-2.7.tar.gz
cd bison-2.7
 
./configure --prefix=/usr/local/bison --with-libiconv-prefix=/usr/local/libiconv/
 
make
make install
 
ln -s /usr/local/bison/bin/bison /usr/bin/bison
ln -s /usr/local/bison/bin/yacc /usr/bin/yacc
