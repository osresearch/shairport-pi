PWD := $(shell pwd)
CONFIG ?= shairport_pi4b

sdcard.img: buildroot/output/images/sdcard.img
	cp $< $@
buildroot/output/images/sdcard.img: buildroot/.config
	$(MAKE) -C buildroot BR2_EXTERNAL=$(PWD)

buildroot/.config: configs/$(CONFIG)_defconfig
	$(MAKE) -C buildroot BR2_EXTERNAL=$(PWD) $(notdir $<)
	
shairport-rebuild:
	$(MAKE) -C buildroot BR2_EXTERNAL=$(PWD) shairport-sync-rebuild
