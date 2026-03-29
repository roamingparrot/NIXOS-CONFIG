{ config, lib, pkgs, ... }:

{
  fileSystems."/mnt/storage" = {
    device = "/dev/disk/by-uuid/e380d5c6-2ea7-49eb-9455-feff78f13706";
    fsType = "ext4";
    options = [ "defaults" "noatime" "discard" ];
  };

  # Ensure the code directory is created at boot
  system.activationScripts.codeDir = ''
    mkdir -p /mnt/storage/code
    chown roaming:users /mnt/storage/code
  '';
}
