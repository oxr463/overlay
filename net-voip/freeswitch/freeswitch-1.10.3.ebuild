# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit autotools eutils toolchain-funcs

DESCRIPTION="Software Defined Telecom Stack"
HOMEPAGE="https://freeswitch.com"
SRC_URI="https://github.com/signalwire/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"
LICENSE="MPL-1.1"

SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="
	dev-db/postgresql:=
	dev-db/sqlite
	dev-lang/lua:=
	dev-libs/libedit
	media-libs/opus
	media-libs/speex
	media-libs/speexdsp
	net-libs/ldns
"
DEPEND="${RDEPEND}"

src_prepare() {
	default
	./bootstrap.sh || die "Failed to bootstrap configure files"
}
