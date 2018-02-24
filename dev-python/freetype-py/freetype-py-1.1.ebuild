# From 4nykey's overlay

EAPI=6

PYTHON_COMPAT=( python2_7 python3_{4,5,6} )
inherit distutils-r1
SRC_URI="https://github.com/rougier/freetype-py/archive/1.1.tar.gz -> ${P}.tar.gz"
KEYWORDS="~amd64 ~x86"

DESCRIPTION="Python bindings for the freetype library"
HOMEPAGE="https://github.com/rougier/${PN}"

LICENSE="BSD"
SLOT="0"
IUSE=""

RDEPEND="
	media-libs/freetype:2
"
DEPEND="
	${RDEPEND}
"