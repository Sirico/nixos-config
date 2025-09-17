{ config, pkgs, ... }: {
  home.packages = with pkgs; [
    distrobox

    # GUI apps
    github-desktop

    # Language tools (asdf-managed)
    asdf-vm
  ];

  programs.asdf = {
    enable = true;
    package = pkgs.asdf-vm;

    plugins = {
      elixir = {
        enable = true;
        version = "latest";
      };
      erlang = {
        enable = true;
        version = "latest";
      };
      nodejs = {
        enable = true;
        version = "20.12.2";
      };
      python = {
        enable = true;
        version = "3.12.2";
      };
      rust = {
        enable = true;
        version = "latest";
      };
    };
  };
}
