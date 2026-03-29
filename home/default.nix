{ pkgs, ... }:

{
  home-manager.useGlobalPkgs = true;
  home-manager.useUserPackages = true;
  home-manager.backupFileExtension = "hm-backup";

  home-manager.users.roaming = {
    imports = [
      ./coding.nix
      ./rice.nix
      ./apps.nix
      ./audio.nix
      ./hyprland.nix
    ];

    home.username = "roaming";
    home.homeDirectory = "/home/roaming";
    home.stateVersion = "25.05";
    home.packages = [ pkgs.home-manager ];
    programs.home-manager.enable = true;
  };
}
