{ config, pkgs, lib, inputs, ... }:

{
  imports = [
    ../home.nix
    ./hardware-configuration.nix
  ];

  system.stateVersion = "23.05";

  modules = {
    desktop = {
      kde.enable = true;
      apps.enable = true;
      fonts.enable = true;

      browsers = {
        default = "firefox";
        firefox.enable = true;
      };

      gaming = {
        enable = true;
        steam.enable = true;
      };

      programs = {
        discord.enable = true;
        docker.enable = true;
      };
    };

    hardware = {
      bluetooth.enable = true;
      nvidia.enable = true;
      pipewire.enable = true;
    };

    shell = {
      zsh.enable = true;
    };
  };

}
