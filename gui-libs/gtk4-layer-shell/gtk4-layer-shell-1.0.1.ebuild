EAPI=8
DESCRIPTION="A library for using the Layer Shell Wayland protocol with GTK4."
HOMEPAGE="https://github.com/wmww/gtk4-layer-shell"
SRC_URI="https://github.com/wmww/gtk4-layer-shell/archive/refs/tags/v1.0.1.tar.gz"
LICENSE="MIT"
SLOT="0"
IUSE="vala docs introspection test"
inherit meson

src_configure() {
	local emesonargs=(
		# meson_use <USE flag> [option name]
		# https://devmanual.gentoo.org/eclass-reference/meson.eclass/index.html
		$(meson_use vala vapi)
		$(meson_use test tests)
		$(meson_use docs)
		$(meson_use introspection)
	)
	meson_src_configure
}

# src_install() {

#}
