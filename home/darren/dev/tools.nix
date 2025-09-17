{ pkgs, ... }:

{
  home.packages = with pkgs; [
    distrobox
    github-desktop

    # Language toolchains
    elixir
    erlang
    nodejs
    python3
  ];
}

