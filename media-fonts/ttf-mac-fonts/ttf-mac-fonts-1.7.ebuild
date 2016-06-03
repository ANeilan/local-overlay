# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5
inherit subversion

DEPENDS="dev-vcs/subversion"
ESVN_REPO_URI="https://svn.code.sf.net/p/macbuntu/code/Macbuntu/fonts/"
SLOT=0
KEYWORDS="~amd64"
DESCRIPTION="Mac fonts including Lucida Grande, Apple Garamond and other fonts from Apple"
SRC_URI="http://images.apple.com/legal/sla/docs/SafariWindows.pdf"

src_install() {
	insinto /usr/share/fonts/TTF
	doins gbk/*.ttf
	doins mac/*.ttf
	insinto /usr/share/fonts/Type1
	doins mac/*.pfb
	dodir /usr/share/licenses/ttf-mac-fonts
	insinto /usr/share/licenses/ttf-mac-fonts
	doins ${DISTDIR}/SafariWindows.pdf
}
