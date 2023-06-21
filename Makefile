define makearg
	@#cd $(1) && makepkg -s PKGBUILD && chattr -i && cd ..
	cd $(1) && makepkg -sf && cd ..
endef

all:
	$(call makearg,yay)
	@#printf "\033[1;32m"
	@#mv */*.pkg.tar.zst ${PKGDIR}/${ARCHITECTURE}/
	@#printf "\033[0m"

.PHONY: all