{pkgs, config, ...}:
{
    xdg.configFile."nvim".source =
        config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/nixos-config/home/dev/nvim";

    home.packages = with pkgs; [
        neovim
        vimPlugins.nvim-treesitter-parsers.cpp
        rust-analyzer
        ripgrep
        gcc
        tree-sitter
        fd
        lua
        stylua
    ];

    home.sessionVariables = {
        EDITOR = "nvim";
        VISUAL = "nvim";
    };

    home.shellAliases = {
        vi = "nvim";
        vim = "nvim";
    };
}
