{config,...}:
{
  xdg.configFile."zellij".source =
  config.lib.file.mkOutOfStoreSymlink "/home/tarwaft/nixos-config/home/shell/zellij";
}
