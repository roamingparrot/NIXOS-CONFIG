{ config, pkgs, ... }:

{
  programs.fish.enable = true;
  environment.systemPackages = with pkgs; [                                                              
     git
     gh
     neovim
     unzip
     kitty
     windsurf
  ]; 

  users.extraUsers.roaming = {
    shell = pkgs.fish;
  };
}
