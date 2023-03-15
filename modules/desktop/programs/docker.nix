{ options, config, lib, pkgs, ... }:

with lib;
with lib.my;
let cfg = config.modules.desktop.programs.docker;
in
{
  options.modules.desktop.programs.docker = {
    enable = mkBoolOpt false;
  };

  config = mkIf cfg.enable {
    virtualisation.docker.enable = true;
    virtualisation.docker.liveRestore = false;
    users.users.aleks.extraGroups = [ "docker" ];
  };

}
