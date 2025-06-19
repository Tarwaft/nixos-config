{pkgs,...}:
{
    home.sessionVariables = {
        QT_QPA_PLATFORMTHEME = "qt5ct";
    };
    home.packages = with pkgs; [
        libsForQt5.qt5ct
        qt6ct
        kdePackages.breeze
    ];
    qt = {
        enable = true;
        platformTheme.name = "qt5ct";
        style.name = "adwaita-dark";
        style.package = pkgs.adwaita-qt;
    };
}