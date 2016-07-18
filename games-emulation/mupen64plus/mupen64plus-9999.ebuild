# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

DESCRIPTION="A fork of Mupen64 Nintendo 64 emulator, meta-package"
HOMEPAGE="http://www.mupen64plus.org/"
SRC_URI=""

LICENSE="metapackage"
SLOT="0"
KEYWORDS=""
IUSE="+audio-sdl +input-sdl +rsp-hle +ui-console +ui-m64py +video-glide64mk2 +video-rice"

RDEPEND="=games-emulation/mupen64plus-core-9999
	audio-sdl? ( =games-emulation/mupen64plus-audio-sdl-9999 )
	input-sdl? ( =games-emulation/mupen64plus-input-sdl-9999 )
	rsp-hle? ( =games-emulation/mupen64plus-rsp-hle-9999 )
	ui-console? ( =games-emulation/mupen64plus-ui-console-9999 )
	ui-m64py? ( =games-emulation/m64py-9999 )
	video-glide64mk2? ( =games-emulation/mupen64plus-video-glide64mk2-9999 )
	video-rice? ( =games-emulation/mupen64plus-video-rice-9999 )"
