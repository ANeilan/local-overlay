# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

inherit git-r3

DESCRIPTION="BBC Iplayer downloading application"
HOMEPAGE="http://linuxcentre.net/get_iplayer/"
EGIT_REPO_URI="https://github.com/get-iplayer/get_iplayer"
EGIT_BRANCH="develop"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

RDEPEND="virtual/ffmpeg
		( media-video/flvstreamer
                     media-video/rtmpdump )
		dev-perl/libwww-perl
		media-video/atomicparsley-wez
		"
DEPEND=""

src_install() {
	dobin ${PN}
	doman ${PN}.1
	insinto /usr/share/${PN}/plugins
	doins plugins/*
}

