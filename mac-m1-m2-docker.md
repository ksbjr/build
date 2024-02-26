## Install Docker on MAC M1/M2

** 1.) install homebrew

    "https://phoenixnap.com/kb/install-homebrew-on-mac"

** 2.) brew install coreutils

** 3.) brew install bash

** 4.) Download Docker here and install

   "https://docs.docker.com/desktop/install/mac-install/"

   follow instructions here.

** 5.) Next start docker. and follow the setup for basic setup'

6.) Next go to the finder bar on the left side you will see a small whale.
    Click and goto preferances.

7.) Under preferances > general....
    Change the Virtual Framework from gRPC FUSE to VirtioFS.

8.) Then goto preferances > Resources
    Here change the CPU to as many as you can afford but atleast 4 
    Next change mem to 8 or 12 gig, 
    Next set swap to 512 and then set Virual disk,
    Finally set the size to 64 gig or higher.like 120 gig. Save and let the docker apply and reload. 

9.) open a terminal and goto your home dir your documents dir.

10.) Inside your home or documents dir make a dir called Docker.
    Inside docker dir "git clone --depth 1 -b riscv-next https://github.com/riscv/build.git"

11.) cd into build and run command run basic build command
    ./compile.sh KERNEL_ONLY=no KERNEL_CONFIGURE=no CLEAN_LEVEL=debs  COMPRESS_OUTPUTIMAGE=img \
    EXPERT=yes BOARD=beaglev BRANCH=edge RELEASE=kinetic BUILD_DESKTOP=no BUILD_MINIMAL=no \
    SHOW_LOG=yes SHOW_DEBUG=yes

    The first run will take some time as it pulls everything down it needs. This includes the pre-built
    docker container.

    You can change settings later . but this will allow youto follow and track the first build for any 
    issues !

