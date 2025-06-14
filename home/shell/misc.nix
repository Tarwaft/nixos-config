{pkgs, inputs, system,...}:
{
    home.packages = (with pkgs; [


        # movies
        inputs.lobster.packages.${system}.lobster
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
        git
        openssh
        ffmpeg
    ]);
}