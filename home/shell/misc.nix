{pkgs, inputs, ...}:
{
    home.packages = (with pkgs; [
        inputs.lobster.packages.${system}.lobster
        fastfetch
        ani-cli


        killall

        zip
        xz
        unzip
        p7zip

        fzf
        git

        openssh
    ]);
}