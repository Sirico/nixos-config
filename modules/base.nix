{ pkgs, ... }:
{
  #### Enable unfree packages globally
  nixpkgs.config.allowUnfree = true;

  #### Enable flakes and nix-command permanently
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  #### Essential system packages
  environment.systemPackages = with pkgs; [
    vim
    git
    curl
    wget
    btrfs-progs
    zenity
  ];

  #### Editor default
  environment.variables.EDITOR = "vim";
}

