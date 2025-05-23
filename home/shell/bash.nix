{
    programs.bash = {
        enable = true;
        enableCompletion = true;
        bashrcExtra = ''
        alias nrs='sudo nixos-rebuild switch --flake ~/nixos-config/'
        '';
    };
    programs.zoxide = {
        enable = true;
        enableBashIntegration = true;
    };
}