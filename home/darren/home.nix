{ config, pkgs, ... }:

{
  home.username = "darren";
  home.homeDirectory = "/home/darren";
  home.stateVersion = "25.05";

#####################git###########################
  programs.git = {
    enable = true;
    userName = "Darren Gregory";
    userEmail = "darrenjgregory@gmail.com";
  };
  
  ##############home manager######################
  programs.home-manager.enable = true;
##############################zsh#########################

  programs.zsh.enable = true;
  
############## Toggle apps #####################
  hmApps.vivaldi.enable   = true;
  hmApps.bitwarden.enable = true;
  hmApps.bitwarden.cli    = true;   # optional
  hmApps.signal.enable    = true;
  hmApps.obsidian.enable  = true;
  hmApps.vscode.enable    = true;
  
}
