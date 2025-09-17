{ config, lib, pkgs, ... }:
with lib; {
  options.hmApps.vivaldi.enable = mkEnableOption "Vivaldi browser";
  config = mkIf config.hmApps.vivaldi.enable {
    home.packages = [ pkgs.vivaldi ];
  };
}
