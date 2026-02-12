{
    programs.kitty = {
        enable = true;
        
        settings = {
            background_opacity = 0.8;
            window_margin_width = 1;
            font_family = "Monaspace Krypton";
            confirm_os_window_close = 0;
        };
        extraConfig = "
        startup_session ~/nixos-config/home/apps/kitty_startup_session.conf
        ";
    };
}
