{ config, pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ../../modules/base.nix
    ../../modules/hardware/nvidia.nix
  ];

  ################# Bootloader #################
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  ################# Hostname & Networking #################
  networking.hostName = "nitro-5";
  networking.networkmanager.enable = true;

  ################# Locale / Timezone #################
  time.timeZone = "Europe/London";

  i18n.defaultLocale = "en_GB.UTF-8";
  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_GB.UTF-8";
    LC_IDENTIFICATION = "en_GB.UTF-8";
    LC_MEASUREMENT = "en_GB.UTF-8";
    LC_MONETARY = "en_GB.UTF-8";
    LC_NAME = "en_GB.UTF-8";
    LC_NUMERIC = "en_GB.UTF-8";
    LC_PAPER = "en_GB.UTF-8";
    LC_TELEPHONE = "en_GB.UTF-8";
    LC_TIME = "en_GB.UTF-8";
  };

  ################# Keymap #################
  services.xserver.xkb = {
    layout = "gb";
    variant = "";
  };
  console.keyMap = "uk";

  ################# Display Manager / Desktop #################
  services.xserver.enable = true;
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;

  ################# Printing #################
  services.printing.enable = true;

  ################# Audio #################
  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  ################# Users #################
  users.users.darren = {
    isNormalUser = true;
    description = "Darren";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [ ]; # Prefer Home Manager for user packages
  };

  ################# Nix Settings #################
  nixpkgs.config.allowUnfree = true;
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  ################# Optional: System packages #################
  environment.systemPackages = with pkgs; [
    vim git curl wget
  ];

  ################# Version Pin #################
  system.stateVersion = "25.05";
}

