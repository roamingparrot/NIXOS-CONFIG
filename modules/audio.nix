{ config, pkgs, ... }:

{
   services.pulseaudio.enable = false;

  # Required for low-latency audio
  security.rtkit.enable = true;

  # PipeWire setup
  services.pipewire = {
    enable = true;

    alsa = {
      enable = true;
      support32Bit = true;
    };

    pulse.enable = true;
    jack.enable = false;

    wireplumber.enable = true;
  };

  # Audio utilities
  environment.systemPackages = with pkgs; [
    pipewire
    wireplumber
    pavucontrol
    alsa-utils
    pulsemixer
  ];
}
