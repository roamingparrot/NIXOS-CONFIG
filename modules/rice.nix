{ config, lib, pkgs, ... }:
{
  fonts.fontDir.enable = true;
  fonts.packages = with pkgs; [ nerd-fonts.fira-code ];

  environment.systemPackages = with pkgs; [                                                              
     starship
     rofi
     swww
     waytrogen
     hyprpicker
     waybar
     fastfetch
  ]; 
}
