{ pkgs, config, lib, ... }:

with builtins;
with lib;
{
  time = {
    timeZone = "Europe/Istanbul";
    hardwareClockInLocalTime = true;
  };

  i18n.defaultLocale = "en_US.UTF-8";

  networking.networkmanager.enable = true;

  # Steam controller support
  hardware.steam-hardware.enable = true;

  # ZRAM
  zramSwap.enable = true;
  zramSwap.memoryPercent = 100;

  boot = {
    loader.systemd-boot.enable = true;
    loader.efi.canTouchEfiVariables = true;
    loader.efi.efiSysMountPoint = "/boot/efi";
    kernelPackages = pkgs.linuxKernel.packages.linux_zen;
  };
}
