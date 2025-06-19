{pkgs, ...}:
{
    home.packages = (with pkgs; [blueman opentabletdriver mpv pavucontrol inkscape eog]);
}
