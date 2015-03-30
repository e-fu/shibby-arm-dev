### First be sure to have Docker installed :-), than:

Install the Container on your host:

    docker run  -d -P inetpeople/shibby-arm-dev


You can SSH to this Container. The root password is: shibby-arm.

    docker ps | grep 22/tcp
    # Returns something like this:
    # 0.0.0.0:49154->22/tcp
    ssh root@0.0.0.0:49154
    # password: shibby-arm

Run get_shibby.sh to get the ARM sources and set your environment. It will download the sources from bitbucket and set the build ENV for it.

## Run get_shibby.sh to get the shibby sources:

    get_shibby.sh

You will find the sources in:

    cd /data/tomato-arm/release/src-rt-6.x.4708/

Don't forget to run once (1 time!):

    # Set $PATH and reload:
    echo "export PATH=$PATH:/opt/brcm-arm/bin:/sbin/" >> ~/.profile && source ~/.profile

    sudo ln -s /home/tomato/tomato-make/toolchains/hndtools-arm-linux-2.6.36-uclibc-4.5.3 /opt/hndtools-arm-linux-2.6.36-uclibc-4.5.3


Now build the firmware with make. Try make help or look into the Makefile in this directory to know your options.

    # cd /data/tomato-arm/release/src-rt-6.x.4708/
    make help
    # Example: build firmware for 868L
    make dir868l V1=MyFirmware V2=2.6-xxx

Good Luck!

### Trouble?

Try this:

     # Did you save your work? Now is a good time..
     cd /data/tomato-arm/release/src-rt-6.x.4708
     git clean -dfx && git checkout .
     
