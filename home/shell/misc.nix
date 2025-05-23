{pkgs, inputs, system,...}:
{
    home.packages = (with pkgs; [
        inputs.lobster.packages.${system}.lobster
        ani-cli
        curl


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