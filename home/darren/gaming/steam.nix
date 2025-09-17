# home/darren/gaming/steam.nix
{ pkgs, ... }:

{
  home.packages = with pkgs; [
    steam
  ];
}
