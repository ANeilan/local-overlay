# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI="6"
DESCRIPTION="Generate fortune cookies from Wikiquote."
SLOT="0"

HOMEPAGE="https://github.com/maandree/wikiquote-fortune"
SRC_URI="https://github.com/maandree/wikiquote-fortune/archive/${PV}.tar.gz"

LICENSE="GPL3"
KEYWORDS="amd64 x86"

DEPEND="net-misc/wget"
RDEPEND="
net-misc/wget
dev-python/python"

src_install()
{
	emake DESTDIR="${D}" install
}
