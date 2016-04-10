# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5
inherit eutils

DESCRIPTION="Utility to extract and convert teletext CC from TS files"
HOMEPAGE="https://github.com/petrkutalek/telxcc"
SRC_URI="https://github.com/petrkutalek/${PN}/archive/v${PV}.tar.gz"

LICENSE="GPL"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="sys-libs/glibc"
RDEPEND=""

src_prepare() {
	epatch "${FILESDIR}/${PN}-gentoo.patch"
}

src_configure() {
	echo ""
}

src_compile() {
	emake CC="$(tc-getCC)" CFLAGS="${CFLAGS}"
}

src_install() {
	emake DESTDIR="${D}" install
	dodoc README.md
}
