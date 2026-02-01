{pkgs, system, inputs, ...}:
{
    home.packages = (with pkgs;
    [
        brightnessctl
        hyprlock
        #hyprsysteminfo
        # inputs.astal.packages.${system}.default
        # ags
        
    ]);

    
}
