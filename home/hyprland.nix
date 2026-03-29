{ pkgs, ... }:

{
  wayland.windowManager.hyprland = {
    enable = true;

    settings = {
      # Variables
      "$terminal" = "kitty";
      "$browser" = "floorp";
      "$runner" = "rofi -show drun";
      "$mainMod" = "SUPER";

      # Environment
      env = [
        "XCURSOR_SIZE,24"
        "HYPRCURSOR_SIZE,24"
      ];

      # Autostart
      exec-once = [
        "swww-daemon"
        "waybar"
      ];

      # General
      general = {
        gaps_in = 2;
        gaps_out = 5;
        border_size = 0;
        layout = "dwindle";
      };

      # Decoration
      decoration = {
        active_opacity = 0.98;
        inactive_opacity = 0.85;
        blur.enabled = false;
      };

      # Animations
      animations = {
        enabled = true;
        bezier = [
          "easeOutQuint, 0.23, 1, 0.32, 1"
          "easeInOutCubic, 0.65, 0.05, 0.36, 1"
          "linear, 0, 0, 1, 1"
          "almostLinear, 0.5, 0.5, 0.75, 1"
          "quick, 0.15, 0, 0.1, 1"
        ];
        animation = [
          "global, 1, 10, default"
          "border, 1, 5.39, easeOutQuint"
          "windows, 1, 4.79, easeOutQuint"
          "windowsIn, 1, 4.1, easeOutQuint, popin 87%"
          "windowsOut, 1, 1.49, linear, popin 87%"
          "fadeIn, 1, 1.73, almostLinear"
          "fadeOut, 1, 1.46, almostLinear"
          "fade, 1, 3.03, quick"
          "layers, 1, 3.81, easeOutQuint"
          "layersIn, 1, 4, easeOutQuint, fade"
          "layersOut, 1, 1.5, linear, fade"
          "fadeLayersIn, 1, 1.79, almostLinear"
          "fadeLayersOut, 1, 1.39, almostLinear"
          "workspaces, 1, 1.94, almostLinear, fade"
          "workspacesIn, 1, 1.21, almostLinear, fade"
          "workspacesOut, 1, 1.94, almostLinear, fade"
          "zoomFactor, 1, 7, quick"
        ];
      };

      # Layout
      master.new_status = "master";

      # Input
      input = {
        kb_layout = "us";
        follow_mouse = 1;
        sensitivity = 0;
      };

      # Keybinds
      bind = [
        "$mainMod, Q, killactive,"
        "$mainMod, P, togglesplit,"
        "$mainMod, left, movefocus, l"
        "$mainMod, right, movefocus, r"
        "$mainMod, up, movefocus, u"
        "$mainMod, down, movefocus, d"
        "$mainMod SHIFT, left, movewindow, l"
        "$mainMod SHIFT, right, movewindow, r"
        "$mainMod SHIFT, up, movewindow, u"
        "$mainMod SHIFT, down, movewindow, d"
        "$mainMod SHIFT, 1, movetoworkspace, 1"
        "$mainMod SHIFT, 2, movetoworkspace, 2"
        "$mainMod SHIFT, 3, movetoworkspace, 3"
        "$mainMod ALT, C, exit,"
        "$mainMod, S, togglespecialworkspace, magic"
        "$mainMod CTRL, S, movetoworkspace, special:magic"
        "$mainMod, F, fullscreen"
        "$mainMod, RETURN, exec, $terminal"
        "$mainMod, M, exec, spotify"
        "$mainMod, B, exec, $browser"
        "$mainMod, SPACE, exec, $runner"
      ];

      bindm = [
        "$mainMod, mouse:272, movewindow"
        "$mainMod, mouse:273, resizewindow"
      ];

      bindel = [
        ", XF86AudioRaiseVolume, exec, wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"
        ", XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"
        ", XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
        ", XF86AudioMicMute, exec, wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"
        ", XF86MonBrightnessUp, exec, brightnessctl -e4 -n2 set 5%+"
        ", XF86MonBrightnessDown, exec, brightnessctl -e4 -n2 set 5%-"
      ];

      # Window rules
      windowrule = [
        "suppressevent maximize, class:.*"
        "nofocus,class:^$,title:^$,xwayland:1,floating:1,fullscreen:0,pinned:0"
      ];
    };

    # Source monitors externally (managed by nwg-displays)
    extraConfig = ''
      source = ~/.config/hypr/monitors.conf
    '';
  };
}
