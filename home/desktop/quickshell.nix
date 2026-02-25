{config, ...}:
{
    programs.quickshell = {
    	enable = true;
	};
    xdg.configFile."quickshell".source =
  config.lib.file.mkOutOfStoreSymlink "/home/tarwaft/nixos-config/home/desktop/quickshell_1/";
}
