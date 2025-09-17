{ config, pkgs, ... }:
{
  #### Global nixpkgs settings
  nixpkgs.config.allowUnfree = true;

  #### Host basics
  networking.hostName = "nitro-5";
  time.timeZone       = "Europe/Dublin";
  i18n.defaultLocale  = "en_GB.UTF-8";
  console.keyMap      = "uk";

  #### Networking / security
  networking.networkmanager.enable = true;
  networking.firewall.enable = true;
  services.openssh.enable = true;

  #### Shell / user
  programs.zsh.enable    = true;
  users.defaultUserShell = pkgs.zsh;

  users.users.darren = {
    isNormalUser = true;
    extraGroups  = [ "wheel" "networkmanager" "audio" "video" "input" ];
    shell        = pkgs.zsh;
  };

  #### Minimal system packages (bare essentials only)
  environment.systemPackages = with pkgs; [
    vim git curl wget
  ];

  environment.variables.EDITOR = "vim";
}

