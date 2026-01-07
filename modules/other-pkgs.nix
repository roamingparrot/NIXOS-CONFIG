{ config, lib, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [                                                              
     floorp-bin
     nwg-displays
     spotify
     vesktop
     obs-studio
     xdg-desktop-portal-hyprland
  ]; 
}
