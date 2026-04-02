{pkgs, system, inputs, ...}:
{
    home.packages = (with pkgs;
    [
        brightnessctl
        libsForQt5.qt5.qtgraphicaleffects
        qt6.qt5compat
        playerctl
        #hyprsysteminfo
        # inputs.astal.packages.${system}.default
        # ags
        
    ]);

    
}
