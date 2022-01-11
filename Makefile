THEOS_DEVICE_IP=192.168.86.89

export SDKVERSION=14.4

ARCHS = arm64 arm64e

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = scnodiscover

scnodiscover_FILES = Tweak.x
scnodiscover_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::

	install.exec "sbreload"
