{pkgs,...}:
{
    home.packages = with pkgs; [
        kdePackages.breeze
    ];

    gtk = {
        enable = true;
        theme = {
        name = "Breeze-Dark";
      };
      iconTheme.name = "breeze";
        cursorTheme = {
            name = "BreezeX-RosePine-Linux";
            size = 24;
        };
    };
}