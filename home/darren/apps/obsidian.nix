{ config, lib, pkgs, ... }:
with lib; {
  options.hmApps.obsidian.enable = mkEnableOption "Obsidian";
  config = mkIf config.hmApps.obsidian.enable {
    home.packages = [ pkgs.obsidian ];
  };
}
