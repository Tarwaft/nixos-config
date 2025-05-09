{
    programs.bash = {
        enable = true;
        bashrcExtra = ''
        alias nrs='sudo nixos-rebuild switch --flake ~/nixos-config/'
        '';
    };
}