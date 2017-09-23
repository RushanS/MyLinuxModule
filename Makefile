ifneq ($(KERNELRELEASE),)
obj-m := mymodule.o
else
KDIR := /opt/newkernel/linux

all:
	$(MAKE) -C $(KDIR) M=$$PWD
endif
