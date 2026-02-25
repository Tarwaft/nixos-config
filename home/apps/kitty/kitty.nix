{config,...}:
{
    programs.kitty = {
        enable = true;
        #
        # settings = {
        #     background_opacity = 0.9;
        #     enable_audio_bell = false;
        #     window_margin_width = 1;
        #     font_family = "Monaspace Krypton";
        #     confirm_os_window_close = 0;
        # };
        # extraConfig = "
        # startup_session ~/nixos-config/home/apps/kitty_startup_session.conf
        # ";
    };


  xdg.configFile."kitty/kitty.conf".source =
  config.lib.file.mkOutOfStoreSymlink "/home/tarwaft/nixos-config/home/apps/kitty/kitty.conf";

}
