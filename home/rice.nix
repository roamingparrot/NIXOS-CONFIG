{ pkgs, ... }:

{
  home.packages = with pkgs; [
    starship
    rofi
    swww
    waytrogen
    hyprpicker
    waybar
    fastfetch
  ];
}
