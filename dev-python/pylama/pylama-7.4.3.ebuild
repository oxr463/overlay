# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6
PYTHON_COMPAT=( python{2_7,3_{4,5,6}} )

inherit distutils-r1

DESCRIPTION="Code audit tool for Python and JavaScript"
HOMEPAGE="https://github.com/klen/pylama"
SRC_URI="https://github.com/klen/pylama/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="LGPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND=""
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]
	test? (
		>=dev-python/mccabe-0.5.2[${PYTHON_USEDEP}]
		>=dev-python/pycodestyle-2.3.1[${PYTHON_USEDEP}]
		>=dev-python/pydocstyle-2.0.0[${PYTHON_USEDEP}]
		>=dev-python/pyflakes-1.5.0[${PYTHON_USEDEP}]
	) "

python_test() {
	esetup.py test
}