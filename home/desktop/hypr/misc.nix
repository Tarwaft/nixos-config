{pkgs, system, inputs, ...}:
{
    home.packages = (with pkgs;
    [
        hyprlock
        hyprpicker
    ]);

    
}
