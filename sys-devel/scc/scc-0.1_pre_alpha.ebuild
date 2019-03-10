# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

EGIT_REPO_URI="git://git.simple-cc.org/scc"
EGIT_COMMIT="v0.1-pre-alpha"

inherit eutils git-r3

DESCRIPTION="Simple C Compiler"
HOMEPAGE="https://www.simple-cc.org"
LICENSE="ISC"

SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
