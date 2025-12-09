{pkgs, ...}:
{
    home.packages = (with pkgs; [
        
    ]);
    dconf.enable = true;
    dconf.settings = {
    "org/gnome/desktop/interface" = {
      # The value is the same string used in the dconf write command.
      color-scheme = "prefer-dark";
    };
  };
}
