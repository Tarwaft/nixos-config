{pkgs, ...}:
{
    home.packages = (with pkgs; [

        fastfetch
        yazi

        zip
        xz
        unzip
        p7zip

        fzf
    ]);
}