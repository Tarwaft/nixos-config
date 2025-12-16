{pkgs, ...}:
{
    home.packages = (with pkgs; [
        wineWowPackages.stable
        vulkan-tools
        vulkan-loader
        vkd3d-proton
    ]);
    dconf.enable = true;
    dconf.settings = {
    "org/gnome/desktop/interface" = {
      # The value is the same string used in the dconf write command.
      color-scheme = "prefer-dark";
    };
  };
}
