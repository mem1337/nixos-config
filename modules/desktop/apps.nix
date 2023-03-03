{ options, config, lib, pkgs, inputs, ... }:

with lib;
with lib.my;
let cfg = config.modules.desktop.apps;
in
{
  options.modules.desktop.apps = {
    enable = mkBoolOpt false;
  };

  config = mkIf cfg.enable {
    environment.systemPackages = with pkgs; [
      ark
      neofetch
      htop
      kate
      pavucontrol
      polkit
      locale
      unrar
      p7zip
      tdesktop
      qbittorrent
      libsForQt5.qtstyleplugin-kvantum
    ];
  };
}
