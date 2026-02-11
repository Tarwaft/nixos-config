{
    programs.zsh = {
        enable = true;
        enableCompletion = true;
        autosuggestion.enable = true;
        syntaxHighlighting.enable = true;

        shellAliases = {
            ll = "ls -l";
            nrs = "sudo nixos-rebuild switch --flake ~/nixos-config/";
            nrsst = "sudo nixos-rebuild switch --flake ~/nixos-config/ --show-trace";
        };
        history.size = 10000;
    };
}
