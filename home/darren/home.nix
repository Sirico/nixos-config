{ config, pkgs, ... }:

{
  home.username = "darren";
  home.homeDirectory = "/home/darren";
  home.stateVersion = "25.05";

  imports = import ./apps/_imports.nix;

  ##################### Git ###########################
  programs.git = {
    enable = true;
    userName = "Darren Gregory";
    userEmail = "darrenjgregory@gmail.com";
  };

  ##################### Home Manager ##################
  programs.home-manager.enable = true;

  ##################### Zsh ###########################
  programs.zsh.enable = true;

  ##################### Toggle apps ###################
  hmApps.vivaldi.enable   = true;
  hmApps.bitwarden.enable = true;
  hmApps.bitwarden.cli    = true;
  hmApps.signal.enable    = true;
  hmApps.obsidian.enable  = true;
  hmApps.vscode.enable    = true;
}

