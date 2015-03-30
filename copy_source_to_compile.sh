#!/bin/sh
echo 'Remember: Please compile as user: tomato'
cd /home/tomato/
cp -ax /home/tomato/tomato-arm /home/tomato/tomato-make
cd /home/tomato/tomato-make
echo 'To compile, do something like:'
echo ''
echo 'make dir868l V1=VYPRVPN V2=2.6-XXX'
echo ''
echo 'sometimes this is usefull: git clean -dfx && git checkout . '
echo ''
echo 'Run "make distclean" before compiling.'
echo ''
echo 'But first, if you did not make it yet:'
echo 'ln -s /home/tomato/tomato-make/release/src-rt-6.x.4708/toolchains/hndtools-arm-linux-2.6.36-uclibc-4.5.3/ /opt/hndtools-arm-linux-2.6.36-uclibc-4.5.3'
echo 'echo "export PATH=$PATH:/opt/hndtools-arm-linux-2.6.36-uclibc-4.5.3/bin:/sbin/" >> ~/.profile && source ~/.profile'
