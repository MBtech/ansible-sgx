#!/bin/bash
./download_prebuilt.sh
make 
cd psw/ae/le
make
cd ../../../
make sdk_install_pkg
make psw_install_pkg

cd linux/installer/bin

echo "yes"  | ./sgx_linux_x64_sdk_*.bin 

mkdir -p $1/sgxsdk

mv sgxsdk/* $1/sgxsdk/

sed -i "s|export SGX_SDK=.*|export SGX_SDK=$1/sgxsdk|g" $1/sgxsdk/environment

source $1/sgxsdk/environment

sudo /opt/intel/sgxpsw/uninstall.sh

sudo ./sgx_linux_x64_psw_*.bin

