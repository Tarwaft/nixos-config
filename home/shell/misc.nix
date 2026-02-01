{pkgs, inputs, system,...}:
{
    home.packages = (with pkgs; [
        btop

        # movies
        #TODO: uncomment this after they fix their dependency
        #inputs.lobster.packages.${system}.lobster
        ani-cli


        #pretty stuff
        starship #for commandprompt

        #utils
        curl
        killall
        zip
        xz
        unzip
        p7zip
        fzf
        #git
        openssh
        ffmpeg
        usbutils
        libinput
        libinput-gestures
        wmctrl
        xdotool
        gparted
        evtest
        jellyfin
        jellyfin-web
    ]);
}
