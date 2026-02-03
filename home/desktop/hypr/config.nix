{pkgs, config, ...}:
{

  wayland.windowManager.hyprland.enable = true;
  home.sessionVariables = {
    NIXOS_OZONE_WL = 1;
    
  };

  xdg.configFile."hypr/hyprland.conf".source =
  config.lib.file.mkOutOfStoreSymlink "/home/tarwaft/nixos-config/home/desktop/hypr/hyprland.conf";

  xdg.configFile."hypr/hyprlock.conf".source =
  config.lib.file.mkOutOfStoreSymlink "/home/tarwaft/nixos-config/home/desktop/hypr/hyprlock.conf";

}
