
{
    #programs.kitty.enable = true; # required for the default Hyprland config
   # wayland.windowManager.hyprland.enable = true; # enable Hyprland
   imports = [
    ./hyprland.nix
    ./rofi.nix
    ./hyprcursor.nix
    ./hyprpaper.nix
    ./misc.nix
    ./waybar.nix
    ./dunst.nix
];
    # Optional, hint Electron apps to use Wayland:
    dconf.settings."org/gnome/desktop/a11y/applications".screen-reader-enabled = false;
    

}
