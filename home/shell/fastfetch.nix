{
    programs.fastfetch = {
        enable = true;
        settings = {
            logo = {
                source = "/home/tarwaft/nixos-config/home/shell/assets/fastfetch-logo.png";
                width = 32;
            };
            modules = {
                seperator = {
                    type = "os";
                    key = "os";
                };
            };
        };
    };
}