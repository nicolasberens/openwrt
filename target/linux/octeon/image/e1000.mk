
ER8XG_CMDLINE:=-mtdparts=phys_mapped_flash:2048k(boot0),2048k(boot1),64k(eeprom) root=/dev/mmcblk0p2 rootdelay=10 rw rootsqimg=squashfs.img rootsqwdir=w console=ttyS0,115200 rootwait rootflags=data=journal pcie_octeon.pcie_disable=1 pcie.pcie_disable=1
define Device/ubnt_edgerouter-8-xg
  DEVICE_VENDOR := Ubiquiti
  DEVICE_PACKAGES += kmod-gpio-button-hotplug kmod-leds-gpio kmod-of-mdio kmod-sfp kmod-usb3 kmod-usb-dwc3 kmod-usb-storage-uas
  KERNEL := kernel-bin | patch-cmdline | append-dtb-to-elf
  KERNEL_DEPENDS := $$(wildcard $(DTS_DIR)/$(DEVICE_DTS).dts)
  CMDLINE := $(ER8XG_CMDLINE)
  DEVICE_MODEL := EdgeRouter Infinity
  DEVICE_DTS := cn7360_ubnt_edgerouter-8-xg
endef
TARGET_DEVICES += ubnt_edgerouter-8-xg
