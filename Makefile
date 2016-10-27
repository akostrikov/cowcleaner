obj-m+=cowcleaner.o
cowcleaner-objs := stubs.o cowpatch.o
 
all:
	make -C /lib/modules/$(shell uname -r)/build/ M=$(PWD) modules
clean:
	make -C /lib/modules/$(shell uname -r)/build/ M=$(PWD) clean
