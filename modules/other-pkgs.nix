{ config, lib, pkgs, ... }:

{
  services.flatpak.enable = true;
  programs.steam.enable = true;
  security.polkit.enable = true;

  boot.extraModulePackages = with config.boot.kernelPackages; [
    v4l2loopback
  ];

  xdg.portal = {
    enable = true;
    extraPortals = with pkgs; [
      xdg-desktop-portal-hyprland
      xdg-desktop-portal-gtk
    ];
  };
}
