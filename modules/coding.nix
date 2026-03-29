{ config, pkgs, ... }:

{
  services.tailscale.enable = true;
  programs.fish.enable = true;

  users.extraUsers.roaming = {
    shell = pkgs.fish;
  };
}
