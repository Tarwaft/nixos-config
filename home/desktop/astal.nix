{inputs, system, ...}:
{
    home.packages = [inputs.astal.packages.${system}.default];
}