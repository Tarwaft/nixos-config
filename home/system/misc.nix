{pkgs, ...}:
{
    home.packages = (with pkgs; [
        wineWowPackages.stable
        vulkan-tools
        vulkan-loader
        vkd3d-proton
        pciutils
        xwayland-satellite
    ]);
    # dconf.settings = {
    # "org/gnome/desktop/interface" = {
    #   # The value is the same string used in the dconf write command.
    #   color-scheme = "prefer-dark";
    # };

  #   dconf.settings = {
  #     "org/gnome/desktop/interface" = {
  #       color-scheme = "prefer-dark";
  #       gtk-theme = "Adwaita-dark";
  #   };
  # };
}
