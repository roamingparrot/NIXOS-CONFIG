{ pkgs, ... }:

{
  home-manager.useGlobalPkgs = true;
  home-manager.useUserPackages = true;

  home-manager.users.roaming = {
    imports = [
      ./coding.nix
      ./rice.nix
      ./apps.nix
      ./audio.nix
    ];

    home.username = "roaming";
    home.homeDirectory = "/home/roaming";
    home.stateVersion = "25.11";
    programs.home-manager.enable = true;
  };
}
