{ pkgs, ... }:
{
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    vim git curl wget
  ];

  environment.variables.EDITOR = "vim";
}

