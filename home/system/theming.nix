{pkgs, lib, ...}:
{
    home.packages = with pkgs; [
        kdePackages.breeze
        libsForQt5.qt5ct
        qt6Packages.qt6ct

        monaspace 
        noto-fonts 
        source-han-sans
    ];

    gtk = {
        enable = true;
        theme = {
            name = "Adwaita-dark";
            package = pkgs.gnome-themes-extra;
        };
      iconTheme.name = "breeze";
        cursorTheme = {
            name = "BreezeX-RosePine-Linux";
            size = 24;
        };
    };

    dconf.enable = true;
    # dconf.settings = {
    # "org/gnome/desktop/interface" = {
    #   # The value is the same string used in the dconf write command.
    #   color-scheme = "prefer-dark";
    # };

    dconf.settings = {
      "org/gnome/desktop/interface" = {
        color-scheme = "prefer-dark";
        gtk-theme = "Adwaita-dark";
        gtk-application-prefer-dark-theme = true;
    };
    
  };

    home.sessionVariables = {
        QT_QPA_PLATFORMTHEME = lib.mkForce "qt5ct";
    };
 
    qt = {
        enable = true;
        platformTheme.name = "adwaita";
        style.name = "adwaita-dark";
        #style.package = pkgs.breeze-qt5;
    };


}
