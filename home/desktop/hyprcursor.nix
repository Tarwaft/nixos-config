{pkgs, system, inputs, ...}:
{
    home.packages = (with pkgs;
    [
        hyprcursor 
        rose-pine-cursor 
        inputs.rose-pine-hyprcursor.packages.${pkgs.system}.default
        nwg-look
    ]);
}