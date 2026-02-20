{pkgs, config, ...}:
{

  wayland.windowManager.hyprland = {
    enable = true;
    plugins = [pkgs.hyprlandPlugins.hyprscrolling];
    extraConfig = ''
      source = ~/.config/hypr/hyprland-user.conf
    '';
  };
  home.sessionVariables = {
    NIXOS_OZONE_WL = 1;
    
  };

#   xdg.configFile."hyprland.conf".source =
#   config.lib.file.mkOutOfStoreSymlink "/home/tarwaft/nixos-config/home/desktop/hypr/hyprland.conf";

  xdg.configFile."hypr/hyprlock.conf".source =
  config.lib.file.mkOutOfStoreSymlink "/home/tarwaft/nixos-config/home/desktop/hypr/hyprlock.conf";

  xdg.configFile."hypr/hyprland-user.conf".source =
  config.lib.file.mkOutOfStoreSymlink "/home/tarwaft/nixos-config/home/desktop/hypr/hyprland-user.conf";

  xdg.configFile."hypr/hyprpaper.conf".source =
  config.lib.file.mkOutOfStoreSymlink "/home/tarwaft/nixos-config/home/desktop/hypr/hyprpaper.conf";

}
