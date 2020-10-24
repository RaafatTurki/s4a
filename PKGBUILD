# Maintainer: Raafat Turki <raafat.turki@protonmail.com>
pkgname=s4a
pkgver=1.6
pkgrel=1
pkgdesc="Scratch modification that allows for simple programming of the Arduino"
arch=('x86_64')
url="http://s4a.cat"
license=('MIT')
groups=()
depends=()
makedepends=('git')
source=('s4a::git://github.com/RaafatTurki/s4a.git')
md5sums=('SKIP')

package() {
	cd "$pkgname"

	install -Dm755 ./dist/bin/s4a "$pkgdir/usr/bin/s4a"
	install -Dm755 ./dist/bin/s4a_squeak_vm "$pkgdir/usr/bin/s4a_squeak_vm"

	install -Dm644 ./dist/lib/s4a "$pkgdir/usr/lib/s4a"\

	install -D ./dist/share/icons/hicolor/128x128/apps/s4a.png $pkgdir/usr/share/icons/hicolor/128x128/apps/
	install -D ./dist/share/icons/hicolor/128x128/mimetypes/gnome-mime-application-x-s4a-project.png $pkgdir/usr/share/icons/hicolor/128x128/mimetypes/
	install -D ./dist/share/icons/hicolor/48x48/apps/s4a.png $pkgdir/usr/share/icons/hicolor/128x128/apps/
	install -D ./dist/share/icons/hicolor/48x48/mimetypes/gnome-mime-application-x-s4a-project.png $pkgdir/usr/share/icons/hicolor/128x128/mimetypes/
	install -D ./dist/share/mime/packages/s4a.xml $pkgdir/usr/share/mime/packages/
}