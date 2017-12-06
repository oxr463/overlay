# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit eutils

DESCRIPTION="Distributed, highly scalable platdform providing robust telecom services"
HOMEPAGE="https://www.2600hz.org"
SRC_URI="https://github.com/2600hz/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MPL-1.1"
SLOT="0"
KEYWORDS="~amd64"
IUSE="pdf"

DEPEND="app-arch/zip
		app-arch/unzip
		dev-libs/expat
		dev-libs/libxslt
		sys-libs/zlib
		dev-libs/openssl:*
		net-misc/curl
		sys-libs/ncurses:5
		dev-vcs/git
		dev-libs/expat
		pdf? ( app-text/htmldoc )"

RDEPEND="${DEPEND}
dev-lang/erlang"

src_compile() {
	emake proper
	emake build-release
}

src_test() {
	emake compile-test
}

#src_install() {
#	dosym /opt/kazoo/core/sup/priv/sup /usr/bin/sup
#}

pkg_postinst() {
	elog "alias sup='KAZOO_ROOT=/opt/kazoo sup'"
}
