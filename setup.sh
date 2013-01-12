#!/bin/sh

# tools
sudo apt-get install build-essential
sudo apt-get install linux-headers-$(uname -r)

# go into
cd RTL2832-2.2.2_kernel-3.0.0

# compile
make clean
make -j4

# install module
sudo make install

# register
modprobe dvb_usb_rtl2832u
