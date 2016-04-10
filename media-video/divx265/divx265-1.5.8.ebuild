# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI="5"

inherit eutils

MY_P=DivX265_1_5_8
DESCRIPTION="Tool to encode HEVC streams"
HOMEPAGE="http://labs.divx.com/divx265"
SRC_URI="http://download.divx.com/hevc/${MY_P}"

#free for personal use, see don't cheat section @ http://labs.divx.com/term/Documentation
LICENSE="free-noncomm"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RDEPEND=""
DEPEND=""

S="${WORKDIR}/"

src_unpack() {
	cp ${DISTDIR}/${MY_P} ${WORKDIR}
}

src_install() {
	exeinto /opt/bin
	newexe ${MY_P} DivX265
}
