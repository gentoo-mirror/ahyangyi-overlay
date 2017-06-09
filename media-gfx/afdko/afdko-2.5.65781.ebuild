EAPI="6"

PYTHON_COMPAT=( python2_7 )

inherit python-single-r1

DESCRIPTION="Adobe Font Development Kit for OpenType"
HOMEPAGE="http://www.adobe.com/devnet/opentype/afdko.html"
SRC_URI="http://download.macromedia.com/pub/developer/opentype/FDK.${PV}/FDK.${PV}-LINUX.zip"

LICENSE="AFDKL"
SLOT="0"
KEYWORDS="amd64 x86"

S=${WORKDIR}

src_prepare() {
	# Move Python-related files to a separate location
	mkdir FDK/Tools/python
	mv FDK/Tools/linux/AFDKOPython FDK/Tools/linux/Python FDK/Tools/python/
	# Use system python
	sed -i -e 's/AFDKO_Python=.*/AFDKO_Python=\/usr\/bin\/python2.7/g' \
		   -e 's/AFDKO_Scripts=.*/AFDKO_Scripts="${AFDKO_EXE_PATH}"\/..\/share\/afdko\/FDKScripts/g' FDK/Tools/linux/setFDKPaths
	# Use patches
	eapply_user
}

src_install() {
	# Install /usr/bin files
	dobin FDK/Tools/linux/*
	# Install /usr/share/afdko files
	insinto /usr/share/afdko
	doins -r FDK/Tools/SharedData/*
}
