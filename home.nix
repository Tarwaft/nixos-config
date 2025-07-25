{ config, system, pkgs, ... }:

{

  home.username = "tarwaft";
  home.homeDirectory = "/home/tarwaft";
  home.sessionVariables = {
    EDITOR = "neovim";
    BROWSER = "zen-twilight";
  };
  xdg.mimeApps = {
    enable = true;
    defaultApplications = {
      "x-scheme-handler/https" = ["zen-twilight.desktop"];
      "x-scheme-handler/http" = ["zen-twilight.desktop"];
      "image/png" = ["eog.desktop"];
    };
  };

  # link the configuration file in current directory to the specified location in home directory
  # home.file.".config/i3/wallpaper.jpg".source = ./wallpaper.jpg;

  # link all files in `./scripts` to `~/.config/i3/scripts`
  # home.file.".config/i3/scripts" = {
  #   source = ./scripts;
  #   recursive = true;   # link recursively
  #   executable = true;  # make all files executable
  # };

  # encode the file content in nix configuration file directly
  # home.file.".xxx".text = ''
  #     xxx
  # '';

  # set cursor size and dpi for 4k monitor
  xresources.properties = {
    "Xcursor.size" = 16;
    "Xft.dpi" = 172;
  };
  
  imports = [
    ./home/desktop
    ./home/apps
    ./home/system
    ./home/gaming
    ./home/shell
    ./home/dev
  ];


  # This value determines the home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update home Manager without changing this value. See
  # the home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "25.05";

  # Let home Manager install and manage itself.
  programs.home-manager.enable = true;
}
