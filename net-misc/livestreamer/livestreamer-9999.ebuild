# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:

EAPI=5
PYTHON_COMPAT=( python{2_7,3_3,3_4} )

inherit distutils-r1

DESCRIPTION="CLI tool that pipes video streams from services like twitch.tv into a video player"
HOMEPAGE="https://github.com/chrippa/livstreamer"

#SRC_URI=""
EGIT_REPO_URI="git://github.com/chrippa/${PN}.git"

if [[ ${PV} == "9999" ]] ; then
    EGIT_REPO_URI="git://github.com/chrippa/${PN}.git"
    inherit git-2
else
    SRC_URI="https://github.com/chrippa/livestreamer/archive/${PN}/v${MY_PV}.tar.gz -> ${P}.tar.gz"
    KEYWORDS="~amd64 ~x86"
fi

LICENSE="BSD"
SLOT="0"
IUSE="rtmp doc test"
RDEPEND="dev-python/pycrypto[${PYTHON_USEDEP}]
	>=dev-python/requests-1.0[${PYTHON_USEDEP}]
	virtual/python-futures[${PYTHON_USEDEP}]
	virtual/python-singledispatch[${PYTHON_USEDEP}]
	>media-video/rtmpdump-2.4"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]
	test? ( ${RDEPEND} )
	doc? ( dev-python/sphinx[${PYTHON_USEDEP}] )
	rtmp? ( dev-python/python-librtmp[${PYTHON_USEDEP}] )"

python_compile_all() {
	use doc && emake -C docs html
}

python_test() {
	esetup.py test
}

python_install_all() {
	use doc && local HTML_DOCS=( docs/_build/html/. )
	distutils-r1_python_install_all
}
