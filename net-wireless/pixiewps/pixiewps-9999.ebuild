# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: blshkv $

EAPI=5

DESCRIPTION="Bruteforce offline the WPS pin exploiting the low or non-existing entropy"
HOMEPAGE="https://github.com/wiire/pixiewps"
if [[ ${PV} == "9999" ]] ; then
    EGIT_REPO_URI="git://github.com/wiire/pixiewps"
    inherit git-r3
else
    SRC_URI="https://github.com/wiire/pixiewps/archive/v${PV}.tar.gz -> ${P}.tar.gz"
fi

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="dev-libs/openssl:0"
RDEPEND="${DEPEND}"

S="${WORKDIR}/${P}/src"

src_prepare() {
	sed -i -e 's|/usr/local||' Makefile
}

src_install(){
	default
	dodoc ../README.md
}
