{pkgs, system, inputs, config, ...}:
{
    xdg.configFile."niri".source =
  config.lib.file.mkOutOfStoreSymlink "/home/tarwaft/nixos-config/home/desktop/niri";
}
