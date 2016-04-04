# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI="6"
DESCRIPTION="Fortune quotes from 2 Broke Girls"
SLOT="0"

MY_PV="5"
HOMEPAGE="http://en.wikiquote.org/wiki/2_Broke_Girls"
SRC_URI="https://github.com/maandree/wikiquote-fortune-collection/archive/${MY_PV}.tar.gz"

LICENSE="custom:cc-sa-3.0"
KEYWORDS="amd64 x86"

DEPEND="games-misc/fortune-mod
games-misc/wikiquote-fortune"

S="${WORKDIR}/wikiquote-fortune-collection-5"

src_configure()
{
	emake SHOWS=2brokegirls SCRIPTS=
}

src_install()
{
	insinto /usr/share/fortune
	doins 2brokegirls 2brokegirls.dat
}
