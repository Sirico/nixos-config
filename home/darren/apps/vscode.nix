{ config, lib, pkgs, ... }:
with lib; {
  options.hmApps.vscode.enable = mkEnableOption "Visual Studio Code";
  config = mkIf config.hmApps.vscode.enable {
    # Uses Microsoft VS Code (unfree). If you prefer FOSS, use pkgs.vscodium.
    home.packages = [ pkgs.vscode ];
  };
}
