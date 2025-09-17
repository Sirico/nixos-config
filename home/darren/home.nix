{ config, pkgs, ... }:

{
  home.username = "darren";
  home.homeDirectory = "/home/darren";
  home.stateVersion = "25.05";

  imports =
    (import ./apps/_imports.nix) ++
    (import ./gaming/_imports.nix) ++ 
    [ ./dev/tools.nix ];

  programs.git = {
    enable = true;
    userName = "Darren Gregory";
    userEmail = "darrenjgregory@gmail.com";
  };

  programs.home-manager.enable = true;
  programs.zsh.enable = true;

  # App toggles
  hmApps.vivaldi.enable   = true;
  hmApps.bitwarden.enable = true;
  hmApps.bitwarden.cli    = true;
  hmApps.signal.enable    = true;
  hmApps.obsidian.enable  = true;
  hmApps.vscode.enable    = true;

  # Gaming toggles

  # Enable some gaming tools
  hmGaming.steam.enable    = true;
  hmGaming.gamemode.enable = true;
}

