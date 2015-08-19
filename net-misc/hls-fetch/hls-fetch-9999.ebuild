# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
inherit eutils git-r3
DESCRIPTION="Download and decrypt HTTP Live Streaming videos."
HOMEPAGE="https://github.com/osklil/hls-fetch/"
SLOT="0"
IUSE="parallel"
EGIT_REPO_URI="
	parallel? ( git://github.com/bioinfo-geek/hls-fetch )
	!parallel? ( git://github.com/osklil/hls-fetch )"
DEPEND="
	dev-lang/perl
	dev-libs/openssl
parallel? ( dev-perl/Parallel-ForkManager )
	dev-perl/HTML-Parser
	dev-perl/libwww-perl
	dev-perl/JSON
	dev-perl/URI"
LICENSE="GPL-3"
KEYWORDS="x86 amd64"
src_install(){
dobin hls-fetch
}
