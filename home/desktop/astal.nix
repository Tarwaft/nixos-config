{inputs, system, ...}:
{
    home.packages = with pkgs; [inputs.astal.packages.${system}.default];
}