{pkgs, system, inputs, ...}:
{
    home.packages = (with pkgs;
    [
        brightnessctl
    ]);
    
}
