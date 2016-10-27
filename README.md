This is a highly experimental live patch for Linux 3.16+ which
mitigates CVE-2016-5195 vulnerability.

How to use:

 * install development tools (build-essential);
 * install kernel headers (linux-headers-$(uname -r));
 * run clean-the-cow.sh as root.

This patch is reversable — just unload cowcleaner module if
something goes wrong.

