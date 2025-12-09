{pkgs, system, inputs, config, ...}:
{
    xdg.configFile."niri/config.kdl".source =
  config.lib.file.mkOutOfStoreSymlink "/home/tarwaft/nixos-config/home/desktop/niri/config.kdl";

  xdg.configFile."niri/binds.kdl".source =
  config.lib.file.mkOutOfStoreSymlink "/home/tarwaft/nixos-config/home/desktop/niri/binds.kdl";


}
