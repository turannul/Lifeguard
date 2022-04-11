export ARCHS = arm64 arm64e
export TARGET = iphone:clang:14.0:11.1.0

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Lifeguard
Lifeguard_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += lifeguardprefs

after-install::
	install.exec "killall -9 SpringBoard"
SUBPROJECTS += lifeguardprefs
include $(THEOS_MAKE_PATH)/aggregate.mk
