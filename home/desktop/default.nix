
{
    #programs.kitty.enable = true; # required for the default Hyprland config
   # wayland.windowManager.hyprland.enable = true; # enable Hyprland
   imports = [
    ./niri.nix
    #./hyprland.nix
    ./rofi.nix
    ./misc.nix
    ./waybar.nix
    ./dunst.nix
    ./hypr
    ./quickshell.nix
];
    # Optional, hint Electron apps to use Wayland:
    dconf.settings."org/gnome/desktop/a11y/applications".screen-reader-enabled = false;

    
    

}
