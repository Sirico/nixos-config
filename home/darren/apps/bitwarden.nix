{ config, lib, pkgs, ... }:
with lib; {
  options.hmApps.bitwarden = {
    enable = mkEnableOption "Bitwarden desktop";
    cli    = mkEnableOption "Bitwarden CLI";
  };

  config = mkIf config.hmApps.bitwarden.enable {
    home.packages =
      [ pkgs.bitwarden ]
      ++ optionals config.hmApps.bitwarden.cli [ pkgs.bitwarden-cli ];
  };
}
