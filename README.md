#### First be sure to have Docker installed :-)

Install the Container on your host:

    docker run  -d -P inetpeople/shibby-arm-dev

More about the Dockerfile: https://github.com/efries/shibby-arm-dev

You can SSH to this Container. The root password is: shibby-arm.

    docker ps | grep 22/tcp
    # Returns something like:
    # 0.0.0.0:49154->22/tcp
    ssh tomato@0.0.0.0:49154
    # password: shibby-arm

Run get_shibby.sh to get the ARM sources and set your environment. It will download the sources from bitbucket and set the build ENV for it.

#### Run to get the shibby sources

    get_shibby.sh

You will find the sources in:

    cd /home/tomato/tomato-arm/release/src-rt-6.x.4708/

#### Copy the source for compilation
    copy_source_to_compile.sh

Now switch into:
    
    cd /home/tomato/tomato-make

Don't forget to run once:

    # Set $PATH and reload:
    echo "export PATH=$PATH:/opt/hndtools-arm-linux-2.6.36-uclibc-4.5.3/bin:/sbin/" >> ~/.profile && source ~/.profile'

Now build the firmware with make. Try make help or look into the Makefile in this directory to know your options.

    # cd cd /home/tomato/tomato-make
    make help
    # Example: build firmware for 868L
    make dir868l V1=MyFirmware V2=2.6-xxx

Good Luck!

### Trouble?

Try this:

     # Did you save your work? Now is a good time..
     cd /home/tomato/tomato-arm/release/src-rt-6.x.4708/
     git clean -dfx && git checkout .
     


[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/efries/shibby-arm-dev/trend.png)](https://bitdeli.com/free "Bitdeli Badge")

