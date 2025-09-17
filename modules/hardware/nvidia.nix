{ config, pkgs, lib, ... }:
let
  nvidiaPackages = config.boot.kernelPackages.nvidiaPackages;
in {
  boot.kernelModules = [ "nvidia" "nvidia_uvm" ];

  services.xserver.videoDrivers = [ "nvidia" ];

  hardware.nvidia = {
    modesetting.enable = true;
    powerManagement.enable = false;  # Can be true on laptops
    open = false;                    # Proprietary driver
    nvidiaSettings = true;
    package = nvidiaPackages.stable; # Or .beta if you want bleeding edge
  };
}
