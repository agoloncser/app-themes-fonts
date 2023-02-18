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
	(fonts/input.sh)
	(fonts/iosevka.sh)
	(fonts/iosevka-comfy.sh)
	(fonts/ibm-plex.sh)
ifeq ($(UNAME), Linux)
	fc-cache -fv
endif

.PHONY: themes
themes:
	(themes/$(UNAME).sh)
