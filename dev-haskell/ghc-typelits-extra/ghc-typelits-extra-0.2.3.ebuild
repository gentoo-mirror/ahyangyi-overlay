# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.3

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Additional type-level operations on GHC.TypeLits.Nat"
HOMEPAGE="http://www.clash-lang.org/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD-2"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="deverror"

RDEPEND=">=dev-haskell/ghc-tcplugins-extra-0.2:=[profile?]
	>=dev-haskell/ghc-typelits-knownnat-0.2:=[profile?] <dev-haskell/ghc-typelits-knownnat-0.4:=[profile?]
	>=dev-haskell/ghc-typelits-natnormalise-0.5:=[profile?] <dev-haskell/ghc-typelits-natnormalise-0.6:=[profile?]
	>=dev-haskell/singletons-2.2:=[profile?] <dev-haskell/singletons-3:=[profile?]
	>=dev-lang/ghc-7.10:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.24.0.0
	test? ( >=dev-haskell/tasty-0.10
		>=dev-haskell/tasty-hunit-0.9 )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag deverror deverror)
}
