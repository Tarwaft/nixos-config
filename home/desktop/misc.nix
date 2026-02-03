{pkgs, system, inputs, ...}:
{
    home.packages = (with pkgs;
    [
        brightnessctl
        hyprlock
        hyprpicker
        #hyprsysteminfo
        # inputs.astal.packages.${system}.default
        # ags
        
    ]);

    
}
