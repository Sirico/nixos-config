{ config, lib, pkgs, ... }:
with lib; {
  options.hmApps.signal.enable = mkEnableOption "Signal Desktop";
  config = mkIf config.hmApps.signal.enable {
    home.packages = [ pkgs.signal-desktop ];
  };
}
