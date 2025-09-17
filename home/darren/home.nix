{ config, pkgs, ... }:

{
  home.username = "darren";
  home.homeDirectory = "/home/darren";
  home.stateVersion = "25.05";

  imports = [
    ./apps/vivaldi.nix
    ./apps/bitwarden.nix
    ./apps/signal.nix
    ./apps/obsidian.nix
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
}
