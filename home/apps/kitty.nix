{
    programs.kitty = {
        enable = true;
        
        settings = {
            background_opacity = 0.8;
            window_margin_width = 1;
            font_family = "Monaspace Krypton";
        };
        extraConfig = "
        startup_session ~/nixos-config/home/apps/kitty_startup_session.conf
        ";
    };
}