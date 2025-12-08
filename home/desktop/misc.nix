{pkgs, system, inputs, ...}:
{
    home.packages = (with pkgs;
    [
        brightnessctl
        inputs.astal.packages.${system}.default
    ]);

    programs.rofi = {
    enable = true;
    };
    
}
