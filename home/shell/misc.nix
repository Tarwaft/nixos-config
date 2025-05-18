{pkgs, ...}:
{
    home.packages = (with pkgs; [

        fastfetch

        killall

        zip
        xz
        unzip
        p7zip

        fzf

        openssh
    ]);
}