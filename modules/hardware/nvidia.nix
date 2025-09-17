{ config, pkgs, lib, ... }:
let
  nvidiaPackages = config.boot.kernelPackages.nvidiaPackages;
in {
  boot.kernelModules = [ "nvidia" "nvidia_uvm" ];

  services.xserver.videoDrivers = [ "nvidia" ];

  hardware.nvidia = {
    modesetting.enable = true;
    powerManagement.enable = false;
    open = false;
    nvidiaSettings = true;
    package = nvidiaPackages.stable;
  };
}
