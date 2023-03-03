{ config, pkgs, lib, inputs, ... }:

{
  config = {
    users.users.aleks = {
      isNormalUser = true;
      description = "aleks";
      extraGroups = [ "networkmanager" "wheel" "input" "power" "gamemode"];
      shell = pkgs.zsh;
    };

    home-manager.users.aleks.home.stateVersion = config.system.stateVersion;
    home-manager.users.aleks.nixpkgs.config.allowUnfree = true;
  };
}
