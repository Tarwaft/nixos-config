{pkgs,...}:
{
    home.sessionVariables = {
        #QT_QPA_PLATFORMTHEME = "qt5ct";
    };
    home.packages = with pkgs; [
        libsForQt5.qt5ct
        qt6ct
        
    ];
    qt = {
        enable = true;
        platformTheme.name = "gnome";
        style.name = "adwaita-dark";
        #style.package = pkgs.breeze-qt5;
    };
}