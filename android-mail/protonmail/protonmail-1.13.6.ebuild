# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit android

DESCRIPTION="ProtonMail for Android"
HOMEPAGE="https://protonmail.com"
SRC_URI="https://github.com/protonmail/proton-mail-android/archive/${PV}.tar.gz -> ${P}.tar.gz"
LICENSE="GPL-3+"

SLOT="0"
KEYWORDS="~arm64"
IUSE="android"

BDEPEND="
	~dev-java/gradle-bin-6.3
	|| ( dev-util/android-commandlinetools-bin dev-util/android-studio )
"
DEPEND=""
RDEPEND="${DEPEND}"
S="${WORKDIR}/proton-mail-android-${PV}"

src_compile() {
	gradle --no-daemon assembleBetaDebug
}

src_install() {
	doapk "app/build/outputs/apk/beta/debug/ProtonMail-Android-${PV}-beta-debug.apk"
}
