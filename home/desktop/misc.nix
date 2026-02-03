{pkgs, system, inputs, ...}:
{
    home.packages = (with pkgs;
    [
        brightnessctl
        #hyprsysteminfo
        # inputs.astal.packages.${system}.default
        # ags
        
    ]);

    
}
