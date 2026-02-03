{pkgs, inputs, system,...}:
{
    home.packages = (with pkgs; [
        btop

        # movies
<<<<<<< HEAD
=======
        #TODO: uncomment this after they fix their dependency
>>>>>>> 31619681585be168711fad65b22f19c5b3bc3785
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
