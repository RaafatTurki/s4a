SRCDIR = ./dist
DESTDIR = /usr

install:
	mkdir -p $(DESTDIR)/bin
	cp -f $(SRCDIR)/bin/s4a $(DESTDIR)/bin
	cp -f $(SRCDIR)/bin/s4a_squeak_vm $(DESTDIR)/bin
	chmod 755 $(DESTDIR)/bin/s4a
	chmod 755 $(DESTDIR)/bin/s4a_squeak_vm

	#main
	mkdir -p $(DESTDIR)/lib
	cp -rf $(SRCDIR)/lib/s4a $(DESTDIR)/lib/

	mkdir -p $(DESTDIR)/share/applications
	cp $(SRCDIR)/share/applications/s4a.desktop $(DESTDIR)/share/applications/s4a.desktop

	#icons
	mkdir -p $(DESTDIR)/share/icons/hicolor/128x128/apps
	cp $(SRCDIR)/share/icons/hicolor/128x128/apps/s4a.png $(DESTDIR)/share/icons/hicolor/128x128/apps/
	cp $(SRCDIR)/share/icons/hicolor/128x128/mimetypes/gnome-mime-application-x-s4a-project.png $(DESTDIR)/share/icons/hicolor/128x128/mimetypes/

	mkdir -p $(DESTDIR)/share/icons/hicolor/48x48/apps
	cp $(SRCDIR)/share/icons/hicolor/48x48/apps/s4a.png $(DESTDIR)/share/icons/hicolor/128x128/apps/
	cp $(SRCDIR)/share/icons/hicolor/48x48/mimetypes/gnome-mime-application-x-s4a-project.png $(DESTDIR)/share/icons/hicolor/128x128/mimetypes/

	mkdir -p $(DESTDIR)/share/mime/packages
	cp $(SRCDIR)/share/mime/packages/s4a.xml $(DESTDIR)/share/mime/packages/



uninstall:

	#main
	rm -f $(DESTDIR)/bin/s4a
	rm -f $(DESTDIR)/bin/s4a_squeak_vm
	rm -rf $(DESTDIR)/lib/s4a
	rm -f $(DESTDIR)/share/applications/s4a.desktop

	#icons
	rm -f $(DESTDIR)/share/icons/hicolor/128x128/apps/s4a.png
	rm -f $(DESTDIR)/share/icons/hicolor/128x128/mimetypes/gnome-mime-application-x-s4a-project.png
	rm -f $(DESTDIR)/share/icons/hicolor/48x48/apps/s4a.png
	rm -f $(DESTDIR)/share/icons/hicolor/48x48/mimetypes/gnome-mime-application-x-s4a-project.png
	rm -f $(DESTDIR)/share/mime/packages/s4a.xml

.PHONY: install uninstall