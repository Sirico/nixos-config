{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    git
    gh
    lazygit
    curl
    wget
    jq
    ripgrep
    fd

    # File tools
    unzip
    zip
    tree

    # Editor fallback
    neovim

    # Build tools
    gcc
    gnumake
    cmake
    pkg-config
  ];

  #### Podman (used by Distrobox)
  virtualisation.podman = {
    enable = true;
    dockerCompat = true;  # let Docker commands work
    defaultNetwork.settings.dns_enabled = true;
  };

  #### Required for Distrobox to function properly
  environment.sessionVariables = {
    DOCKER_HOST = "unix:///run/podman/podman.sock";
  };

  # Optional: user linger for persistent containers
  services.logind.linger.enable = true;
}
