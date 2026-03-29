{ pkgs, ... }:

{
  home.packages = with pkgs; [
    pavucontrol
    pulsemixer
    alsa-utils
  ];
}
