# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
inherit eutils git-2
DESCRIPTION="The RTMP Sniffer"
HOMEPAGE="https://github.com/andreafabrizi/rtmpSnoop"
EGIT_REPO_URI="git://github.com/andreafabrizi/rtmpSnoop.git"
SLOT="0"
LICENSE="LGPL-3"
DEPEND=">=net-analyzer/scapy-2.3.1
>=net-analyzer/tcpdump-4.7.4"
RDEPEND="${DEPEND}"
src_prepare() {
	echo '#!/bin/bash' >> rtmpsnoop
	echo 'exec python2 /usr/share/rtmpsnoop/rtmpSnoop.py "\$@"' >> rtmpsnoop
}
src_install() {
	insinto /usr/share/rtmpsnoop
	doins "${S}/rtmpSnoop.py"
	doins -r lib
	dobin rtmpsnoop
}
