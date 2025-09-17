# home/darren/gaming/steam.nix
{ pkgs, ... }:

{
  home.packages = with pkgs; [
    steam
    proton-ge-custom
    protontricks
    lutris
    mangohud
    gamemode
    vkBasalt
    wine
    winetricks
  ];
}
