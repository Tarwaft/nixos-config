{pkgs, ...}:
{
    home.packages = (with pkgs; [blueman libsForQt5.xp-pen-deco-01-v2-driver]);
}