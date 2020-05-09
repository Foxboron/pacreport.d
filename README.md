pacreport.d
===========

This repository contains an extensive list of known ghost files on Arch Linux
systems. The intention is to enable users to keep a tight check on the unowned
files on their system and to which package they are tied.

The scripts assembles a complete `pacreport.conf` file for `pacreport` from
multiple split files. The intention is to allow drop-in support.


```bash
$ pacreport --unowned-files
Unowned Files:
  /etc/X11/xorg.conf.d/20-intel.conf
  /etc/default/tlp.pacsave
  /etc/systemd/import-pubring.gpg~
  /etc/systemd/system/systemd-homed.service
  /etc/systemd/system/systemd-userdbd.service
  /etc/systemd/system/systemd-userdbd.socket
  /usr/lib/modules/5.5.4-arch1-1/
  /usr/share/devtools/pacman-aur.conf
  /usr/share/dict/words
  /usr/share/texmf/ls-R
  /var/lib/dhcpcd/
  /var/lib/ebtables/
  /var/lib/efi-roller/
  /var/lib/logrotate.status
  /var/lib/systemd/home/
  [....]
```
