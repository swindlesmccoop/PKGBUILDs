define makearg
	@#cd $(1) && makepkg -s PKGBUILD && chattr -i && cd ..
	cd $(1) && makepkg -sf && cd ..
endef

all:
	$(call makearg,cfiles)
	$(call makearg,dmenu-lukesmith)
	$(call makearg,dwm-lukesmith)
	$(call makearg,dwmblocks-lukesmith)
	$(call makearg,gslauncher)
	$(call makearg,lf)
	$(call makearg,liisten)
	$(call makearg,nsxiv)
	$(call makearg,paru)
	$(call makearg,spdl)
	$(call makearg,st-lukesmith)
	$(call makearg,vgmstream)
	$(call makearg,voidrice-scripts)
	$(call makearg,yay)
	@#printf "\033[1;32m"
	@#mv */*.pkg.tar.zst ${PKGDIR}/${ARCHITECTURE}/
	@#printf "\033[0m"

.PHONY: all