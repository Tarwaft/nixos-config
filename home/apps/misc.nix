{pkgs, ...}:
{
    home.packages = (with pkgs; [
        blueman 
        opentabletdriver 
        mpv 
        pavucontrol 
        inkscape 
        eog 
        mixxx
        audacity
        audacious
        orca-slicer
        kicad
        libreoffice-still
        anki-bin

        jellyfin
        prismlauncher
    ]);
}
