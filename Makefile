SHELL := /bin/bash
UNAME := $(shell uname)
ifeq ($(UNAME), Darwin)
	export FONTDIR=${HOME}/Library/Fonts/
else
	export FONTDIR=${HOME}/.fonts/
	export TERMINAL=gnome-terminal
endif

.PHONY: fonts
fonts:
	mkdir -p ${FONTDIR} || true
	(src/fonts-input.sh)
	(src/fonts-iosevka.sh)
	(src/fonts-iosevka-comfy.sh)
	(src/fonts-ibm-plex.sh)
ifeq ($(UNAME), Linux)
	fc-cache -fv
endif

.PHONY: themes
themes:
	(src/themes-$(UNAME).sh)
