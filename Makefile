SHELL = /bin/sh
# If KERNELRELEASE is defined, we've been invoked from the
# kernel build system and can use its language.
ifneq ($(KERNELRELEASE),)
    obj-m := swTimerMod.o
# Otherwise we were called directly from the command
# line; invoke the kernel build system.
else
    KERNELDIR ?= /lib/modules/$(shell uname -r)/build
    BUILDDIR  := $(shell pwd)
all:
	mkdir -p $BUILDDIR
	$(MAKE) -C $(KERNELDIR) M=$(BUILDDIR) modules
clean:
	$(MAKE) -C $(KERNELDIR) M=$(BUILDDIR) clean
endif
# all:
# 	make -C /lib/modules/$(shell uname -r)/build M=$(PWD)/build modules
# clean:
# 	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean