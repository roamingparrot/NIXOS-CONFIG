{ config, lib, pkgs, ... }:

{
  hardware.graphics = {
    enable = true;
  };

  services.xserver.videoDrivers = [ "nvidia" ];

  hardware.nvidia = {
    modesetting.enable = true;   # REQUIRED for Wayland + DSC
    powerManagement.enable = false;
    open = true;
    nvidiaSettings = true;
  };
}

