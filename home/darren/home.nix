{ config, pkgs, ... }:

{
  home.username = "darren";
  home.homeDirectory = "/home/darren";
  home.stateVersion = "25.05";

imports = [
  ./apps/bitwarden.nix
  ./apps/obsidian.nix
  ./apps/signal.nix
  ./apps/vivaldi.nix
  ./apps/vscode.nix

  ./gaming/steam.nix
  ./gaming/gamemode.nix

  ./dev/tools.nix
imports = [
  ./apps/bitwarden.nix
  ./apps/obsidian.nix
  ./apps/signal.nix
  ./apps/vivaldi.nix
  ./apps/vscode.nix

  ./gaming/steam.nix
  ./gaming/gamemode.nix

  ./dev/tools.nix
];
imports = [
  ./apps/bitwarden.nix
  ./apps/obsidian.nix
  ./apps/signal.nix
  ./apps/vivaldi.nix
  ./apps/vscode.nix

  ./gaming/steam.nix
  ./gaming/gamemode.nix

  ./dev/tools.nix
];


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
  
}

