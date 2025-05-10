{pkgs, ...}:
{

  wayland.windowManager.hyprland.enable = true;
  home.sessionVariables = {
    NIXOS_OZONE_WL = 1;
    
  };


  home.packages = (with pkgs; [ hyprpolkitagent playerctl hyprpicker hyprshot]);
  services.playerctld.enable = true;

  wayland.windowManager.hyprland.systemd.variables = ["--all"];

  wayland.windowManager.hyprland.settings = {
    "$mod" = "SUPER";
    "$term" = "kitty";
    "$menu" = "rofi -show drun";
    "$file" = "dolphin";
    "$browser" = "zen-twilight";

    
    env = [
      "HYPRCURSOR_THEME,rose-pine-hyprcursor"
      "HYPRCURSOR_SIZE,24"
      "QT_QPA_PLATFORMTHEME,qt6ct"
      "XCURSOR_SIZE,24"
      
      

    ];
    exec-once = [
       "systemctl --user start hyprpolkitagent"
       "nix run ~/nixos-config/home/desktop/astal/"
    ];
    windowrulev2 = [
      "suppressevent maximize, class:.*"
    ]

    
  

    monitor = [
      "HDMI-A-1,2560x1440@60,0x0,1"
      "DP-1,2560x1440@165,2560x0,1"
    ];

    input = {
      kb_layout = "de";
      follow_mouse = 1;
      accel_profile = "flat";
      sensitivity = 0;
      touchpad = {
        natural_scroll = "yes";
      };

    };

    general = {
      gaps_in = 2;
    };

    decoration = {
      rounding = 10;
      blur = {
        enabled = "true";
        size = 3;
        passes = 1;
      };
    };

    gestures = {
      workspace_swipe = "on";
    };

    animations = {
      enabled = "yes";
      bezier = "myBezier, 0.05, 0.9, 0.1, 1.05";
      animation = [
        "windowsIn, 1, 3, myBezier, slide"
        "windowsOut,1, 3, myBezier, slide"
        "windowsMove,1,3,myBezier, popin"

        "fadeIn, 1, 1, myBezier"
        "fadeOut,1,1,myBezier"
        "fadeSwitch, 1, 3, myBezier"
        
        "workspacesIn, 1, 3, myBezier, slidefadevert"
        "workspacesOut, 1, 3, myBezier, slidefadevert"

        "layersIn, 1, 3, myBezier, popin"
      ];
    };
    bindm = [
        "$mod, mouse:272, movewindow"
        "$mod, mouse:273, resizewindow"
    ];
    bind =
      [
        "$mod, F, fullscreen"
        "$mod, C, exec, $term"
        "$mod, M, exit,"
        "$mod, Q, killactive,"
        "$mod, D, exec, $menu"
        "$mod, E, exec, $file"
        "$mod, B, exec, $browser"
        "$mod, P, exec, hyprpicker -a"
        "$mod, S, exec, hyprshot -m region -z -o ~/Pictures/Screenshots"

        # move focus
        "$mod, l, movefocus, r"
        "$mod, h, movefocus, l"
        "$mod, k, movefocus, u"
        "$mod, j, movefocus, d"

        "$mod, mouse_down, workspace, e+1"
        "$mod, mouse_up, workspace, e-1"

        # Audio Control
        ", XF86AudioPause, exec, playerctl play-pause"
        ", XF86AudioRaiseVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"
        ", XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"
        ", XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
        ", XF86AudioPlay, exec, playerctl play-pause"

        
      ]
      ++ (
        # workspaces
        # binds $mod + [shift +] {1..9} to [move to] workspace {1..9}
        builtins.concatLists (builtins.genList (i:
            let ws = i + 1;
            in [
              "$mod, code:1${toString i}, workspace, ${toString ws}"
              "$mod SHIFT, code:1${toString i}, movetoworkspace, ${toString ws}"
            ]
          )
          9)
      );
  };
}
