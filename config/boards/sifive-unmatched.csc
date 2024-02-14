# RISC-V SiFive Unmatched
BOARD_NAME="Unmatched"
BOARDFAMILY="starfive"
BOARD_MAINTAINER="k.s.bedford.jr@gmail.com"
KERNEL_TARGET="dev, edge, mainline"
BOOT_FDT_FILE="sifive/hifive-unmatched-a00.dtb"
SRC_EXTLINUX="yes"
SRC_CMDLINE="console=ttyS0,115200n8 console=tty0 earlycon=sbi rootflags=data=writeback stmmaceth=chain_mode:1 rw"
BOOTCONFIG=none
