# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit eutils git-r3

DESCRIPTION="a tool aimed to provide X-Edit functionality to Linux users"
HOMEPAGE="http://desowin.org/gdigi/"
SRC_URI="https://github.com/desowin/gdigi.git"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="media-libs/alsa-lib
		x11-libs/gtk+
		dev-libs/glib
		dev-libs/expat
		dev-libs/libxml2"

RDEPEND="${DEPEND}"
