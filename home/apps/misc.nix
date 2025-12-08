{pkgs, ...}:
{
    home.packages = (with pkgs; [
        linuxConsoleTools
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
        arduino

        vlc
        jellyfin
        jellyfin-web
        prismlauncher
        spotify
        ungoogled-chromium
        xournalpp

        jetbrains-toolbox
        oversteer
        obs-studio
        evtest
        usbview
        calibre
        protonplus
        twitch-dl
        nwg-displays
        antares
        mariadb
        cliphist
        wl-clipboard

        blender-hip
        kdePackages.dolphin 
        kdePackages.konsole
        krita
        obsidian
        rnote
        ungoogled-chromium
        vesktop
    ]);
}
