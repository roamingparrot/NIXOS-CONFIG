{ config, lib, pkgs, ... }:

{
  imports = [
    <home-manager/nixos>
    ./hardware-configuration.nix
    ./modules/audio.nix
    ./modules/coding.nix
    ./modules/nvidia.nix
    ./modules/rice.nix
    ./modules/other-pkgs.nix
    ./modules/storage.nix
    ./modules/nix-ld.nix
    ./home/default.nix
  ];

  programs.hyprland.enable = true;
  nixpkgs.config.allowUnfree = true;

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.kernelPackages = pkgs.linuxPackages_latest;

  networking.hostName = "femboy-nix";
  networking.networkmanager.enable = true;

  time.timeZone = "Europe/London";

  i18n.defaultLocale = "en_US.UTF-8";
  console = {
    font = "ter-v32n";
    keyMap = "us";
  };

  users.users.roaming = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" "video" "audio" ];
  };

  system.stateVersion = "25.11";
}
