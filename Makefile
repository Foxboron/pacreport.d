PROGNM ?= pacreport.d
PREFIX ?= /usr/local
BINDIR ?= $(PREFIX)/bin
SHRDIR ?= $(PREFIX)/share
CONFDIR ?= /etc

build:
	PACREPORT_CONF="pacreport.conf" PACREPORT_DIR="pacreport.d" bin/generate-pacreport

clean:
	rm pacreport.conf

install:
	install -Dm0755 bin/generate-pacreport $(BINDIR)/generate-pacreport
	install -Dm0644 -t $(SHRDIR)/pacreport.d pacreport.d/50-*.conf

install-hook:
	install -Dm0755 generate-pacreport.hook $(SHRDIR)/libalpm/hooks/generate-pacreport.hook

.PHONY: install install-hook build clean
