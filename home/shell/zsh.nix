{users,pkgs,...}:
{
    programs.zsh = {
        enable = true;
        enableCompletion = true;
        autosuggestion.enable = true;
        syntaxHighlighting.enable = true;
        initContent = builtins.readFile ./zshrc;

        shellAliases = {
            ll = "lsd -l";
            nrs = "sudo nixos-rebuild switch --flake ~/nixos-config/";
            nrsst = "sudo nixos-rebuild switch --flake ~/nixos-config/ --show-trace";
            pioup = "pio run -t upload";
            ls = "lsd";
        };
        history.size = 10000;
    };
}
