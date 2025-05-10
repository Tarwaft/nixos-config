{pkgs, ...}:
{
    home.packages = (with pkgs; [

        fastfetch

        zip
        xz
        unzip
        p7zip

        fzf

        openssh
    ]);
}