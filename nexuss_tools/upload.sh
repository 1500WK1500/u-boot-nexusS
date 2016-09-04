#!/bin/sh

./smdk-usbdl/smdk-usbdl -f ./bin/HIBL.bin -a D0020000; #HIBL
test $? = 0 && echo "Interceptor Injection Complete.  Injecting modified SBL"|| echo "Interceptor Injection Failure!!!"
sleep 3;
./smdk-usbdl/smdk-usbdl -f ../u-boot.bin -a 34800000; #U-Boot
test $? = 0 && echo "U-Boot Upload Completed. U-Boot is starting..."|| echo "U-Boot Upload Failure"
