{pkgs,...}:
{
    home.sessionVariables = {
        #QT_QPA_PLATFORMTHEME = "qt5ct";
    };
    home.packages = with pkgs; [
        libsForQt5.qt5ct
        qt6Packages.qt6ct
        
    ];
    qt = {
        enable = true;
        platformTheme.name = "adwaita";
        style.name = "adwaita-dark";
        #style.package = pkgs.breeze-qt5;
    };
}
