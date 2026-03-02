{pkgs,config,...}:
{
    xdg.configFile."nvim".source =
  config.lib.file.mkOutOfStoreSymlink "/home/tarwaft/nixos-config/home/dev/nvim";
    programs.neovim = {
        enable = true;
        defaultEditor = true;
        viAlias = true;
        vimAlias = true;
        extraPackages = with pkgs; [
            vimPlugins.nvim-treesitter-parsers.cpp
            rust-analyzer 
            ripgrep       
            gcc
            tree-sitter
            fd
            lua
            stylua
  ];
};
}
