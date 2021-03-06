# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $


EAPI=5
PYTHON_COMPAT=( python{2_7,3_3,3_4} )

inherit distutils-r1

DESCRIPTION="python-librtmp is a Python interface to librtmp. It uses cffi to interface with the C library librtmp."
HOMEPAGE="https://github.com/chrippa/python-librtmp"
KEYWORDS="x86 amd64"
if [[ ${PV} == "9999" ]] ; then
    EGIT_REPO_URI="git://github.com/chrippa/${PN}.git"
    inherit git-2
else
    SRC_URI="https://github.com/chrippa/python-librtmp/archive/v${PV}.tar.gz"
fi

LICENSE="BSD"
SLOT="0"
DEPEND=">=dev-python/cffi-1.0[${PYTHON_USEDEP}]
	virtual/python-singledispatch[${PYTHON_USEDEP}]
	media-video/rtmpdump"
RDEPEND="${DEPEND}"
