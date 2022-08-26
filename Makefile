DIR=${HOME}/git/swindles-arch-packages

define makearg
	cd $(1) && makepkg -s && cd ..
endef

all:
	$(call makearg,cfiles)
	$(call makearg,dmenu-lukesmith)
	$(call makearg,dwm-lukesmith)
	$(call makearg,dwmblocks-lukesmith)
	$(call makearg,gslauncher)
	$(call makearg,liisten)
	$(call makearg,spdl)
	$(call makearg,st-lukesmith)
	$(call makearg,vgmstream)
	$(call makearg,voidirce-scripts)

.PHONY: all