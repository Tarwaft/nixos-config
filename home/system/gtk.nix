{pkgs,...}:
{
    gtk = {
        enable = true;
        theme = {
        name = "Adwaita-dark";
        package = pkgs.gnome-themes-extra;
      };
        cursorTheme = {
            name = "BreezeX-RosePine-Linux";
            size = 24;
        };
    };
}