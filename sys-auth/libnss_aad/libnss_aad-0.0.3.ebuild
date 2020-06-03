# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit eutils

DESCRIPTION="NSS Module for performing user lookups against the Azure Active Directory"
HOMEPAGE="https://cyberninjas.github.io/aad-for-linux"
SRC_URI="https://github.com/cyberninjas/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"
LICENSE="GPL-3"

SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="
	dev-libs/libsodium
	dev-libs/jansson
	dev-libs/jwt
	dev-libs/sds
	net-misc/curl
	sys-libs/libxcrypt
"
DEPEND="${RDEPEND}"

src_prepare() {
	default
	sed -i 's|xcrypt.h|xcrypt/xcrypt.h|g' libnss_aad.c
}

src_install() {
	default
	dodoc doc/*.md
}
