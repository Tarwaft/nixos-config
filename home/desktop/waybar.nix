{
    programs.waybar = {
        enable = true;
        settings = {
            mainBar = {
                height = 30;
                layer = "top";
                position = "top";
                modules-center = [
                    "hyprland/workspaces"
                    "niri/workspaces"
                ];
                modules-left = [
                    "clock"
                ];
                modules-right = [
                    "memory"
                    "battery"
                    "group/audio"
                    
                    
                ];

                "group/audio" = {
                    orientation = "horizontal";
                    modules = [
                        "pulseaudio"
                        "pulseaudio/slider"
                    ];
                };
                "pulseaudio/slider" = {
                    orientation = "horizontal";
                };
            };
        };
        style = ''
        * {
        font-family: Monaspace Krypton;
        }
        .module {
        border-width : 1px;
        border-radius : 24px;
        border-style: solid;
        padding-left: 10px;
        padding-right: 10px;
        padding-top: 1px;
        padding-bottom: 1px;
        margin-left: 20px;
        margin-right: 20px;
        background: #16191C;
        margin: 3px 4px;
        }

        window#waybar {
        
        background: transparent;
        color:#ffffff;
        margin: 3px 4px;
        }

        #pulseaudio-slider {
        margin-left: 0px;
        }
        #pulseaudio-slider slider {
        min-height: 0px;
        min-width: 0px;
        opacity: 0;
        background-image: none;
        border: none;
        box-shadow: none;
        }

        #pulseaudio-slider trough {
        min-height: 10px;
        min-width: 100px;
        background-color: #777777;
        
        }

        #workspaces {
        padding: 0px;
        }
        #workspaces button {
        color: #888888;
        }
        #workspaces button.active {
        background-color: #FFFFFF;
        border-radius: 20px;
        color: #000000;
        }

        '';

    };
    wayland.windowManager.hyprland.settings.exec-once = [
        #"waybar"
    ];
}
