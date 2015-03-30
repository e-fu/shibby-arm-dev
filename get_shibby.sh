#!/bin/sh
echo 'Remember: For security reasons please compile as user: tomato'
[ -d /home/tomato/tomato-arm ] && rm -rf /home/tomato/tomato-arm
[ -d /opt/brcm-arm ] && rm -rf /opt/brcm-arm
[ -d /opt/hndtools-arm-linux-2.6.36-uclibc-4.5.3 ] && rm -rf /opt/hndtools-arm-linux-2.6.36-uclibc-4.5.3
mkdir -p /home/tomato/
cd /home/tomato/
echo 'Cloning Shibby-ARM Git into /home/tomato/tomato-arm/'
git clone https://bitbucket.org/pl_shibby/tomato-arm.git
echo 'To copy and compile the source run:'
echo 'copy_source_to_compile.sh'
