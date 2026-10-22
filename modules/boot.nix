{ pkgs, ... }:

{
  # Bootloader
  boot.loader.systemd-boot.enable = false;
  boot.loader.grub.enable = true;
  boot.loader.grub.efiSupport = true;
  boot.loader.grub.device = "nodev";
  boot.loader.efi.canTouchEfiVariables = true;

  # Use latest kernel
  boot.kernelPackages = pkgs.linuxPackages_latest;
  
  # zram swap
  zramSwap.enable = true;
  zramSwap.algorithm = "zstd";
  
  boot.kernel.sysctl."vm.swappiness" = 180;
  boot.tmp.useTmpfs = false;
}
