git clone https://github.com/novnc/noVNC /tmp/vnc

# Reset .img
# qemu-img create android.img 512M

# linux 4 curl --location "http://k.copy.sh/linux4.iso" --output /tmp/cdrom
# DSL 3
# curl --location "http://computernewb.com/~dartz/isos/dsl-3.4.12.iso" --output /tmp/cdrom
# curl --location "https://k.copy.sh/android-x86-1.6-r2.iso" --output /tmp/cdrom
# curl --location --verbose "https://downloads.sourceforge.net/project/android-x86/Release%204.4/android-x86-4.4-r5.iso" --output /tmp/cdrom
# VirtualXP curl --location "https://github.com/lrusso/VirtualXP/raw/main/VirtualXP.iso" --output /tmp/cdrom
# Ubuntu 8
# curl --location "https://old-releases.ubuntu.com/releases/8.04.0/ubuntu-8.04.4-desktop-i386.iso" --output /tmp/cdrom
# Slax
# curl --location "https://ftp.sh.cvut.cz/slax/Slax-11.x/slax-ipxe.iso" --output /tmp/cdrom
# NodeOS
# curl --location "http://k.copy.sh/nodeos-kernel.bin" --output /tmp/kernel
# qemu-img create /tmp/hda 8192M
# qemu-img create /tmp/hdb 1024M
# qemu-img create /tmp/hdc 1024M
# qemu-img create /tmp/hdd 1024M
qemu-system-i386 -m 128 -vnc 127.0.0.1:0 -hda android.img & # -net user,module=ne2k_isa & # -cdrom android-x86-1.6-r2.iso -hda android.img & # -hdb /tmp/hdb & # -hdc /tmp/hdc -hdd /tmp/hdd &# -action panic=pause& #-action watchdog=reset -action shutdown=pause -daemonize -watchdog  ib700&
/tmp/vnc/utils/novnc_proxy # --vnc localhost:5900