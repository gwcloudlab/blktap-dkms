obj-m := blktap.o

blktap-objs := control.o ring.o device.o request.o sysfs.o

all:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules
clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean
load:
	insmod ./blktap.ko
remove:
	rmmod blktap
