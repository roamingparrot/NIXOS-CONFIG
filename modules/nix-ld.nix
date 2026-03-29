{ config, pkgs, ... }:

{
  # Enable nix-ld (foreign binary compatibility layer)
  programs.nix-ld = {
    enable = true;

    # Libraries commonly required by dynamically linked binaries
    libraries = with pkgs; [
      stdenv.cc.cc
      glibc

      # Common runtime deps (very useful for VS Code extensions)
      zlib
      openssl
      curl
      libgcc

      # Optional but often needed
      xorg.libX11
      xorg.libXext
      xorg.libXrender
      xorg.libXtst
      xorg.libXi

      # Audio / misc (safe to include)
      alsa-lib
      libpulseaudio

      # Extra compatibility
      libuuid
      icu
    ];
  };
}
