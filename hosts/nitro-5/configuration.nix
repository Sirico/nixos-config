# hosts/nitro-5/configuration.nix
{ ... }:
{
  imports = [
    ./hardware-configuration.nix
    ../../modules/base.nix
  ];
  system.stateVersion = "25.05";

  # Make boot explicit for this host
  boot.loader.grub.enable = false;

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.efi.efiSysMountPoint = "/boot";

  # Host-only bits
  networking.hostName = "nitro-5";
  # time.timeZone = "Europe/Dublin";  # set here or in base.nix (not both)
}

