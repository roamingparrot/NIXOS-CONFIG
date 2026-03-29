{ pkgs, ... }:

{
  home.packages = with pkgs; [
    floorp-bin
    nwg-displays
    spotify
    spotify-player
    vesktop
    obs-studio
    prismlauncher
  ];
}
