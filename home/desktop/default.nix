
{
    #programs.kitty.enable = true; # required for the default Hyprland config
   # wayland.windowManager.hyprland.enable = true; # enable Hyprland
   imports = [
    ./hyprland.nix
    ./rofi.nix
    ./hyprcursor.nix
    ./hyprpaper.nix
   
    ./waybar.nix
];
    # Optional, hint Electron apps to use Wayland:
    programs.kitty.enable = true;
    

}