MAKEFLAGS := --no-builtin-rules

PREFIX ?= /usr/local

bindir ?= $(PREFIX)/bin
datarootdir ?= $(PREFIX)/share
sysconfdir ?= /etc

build:
	PACREPORT_CONF="pacreport.conf" PACREPORT_DIR="pacreport.d" bin/generate-pacreport

clean:
	rm pacreport.conf

install:
	install -Dm0755 bin/generate-pacreport $(DESTDIR)$(bindir)/generate-pacreport
	install -Dm0644 -t $(DESTDIR)$(datarootdir)/pacreport.d pacreport.d/50-*.conf

install-hook:
	install -Dm0755 contrib/pacman-hooks/generate-pacreport.hook $(DESTDIR)$(datarootdir)/libalpm/hooks/generate-pacreport.hook

.PHONY: install install-hook build clean
