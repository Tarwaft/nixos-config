{
    programs.fastfetch = {
        enable = true;
        settings = {
            schema = "https://github.com/fastfetch-cli/fastfetch/raw/dev/doc/json_schema.json";
            logo = {
        #type = "small";
        source = "~/nixos-config/home/shell/assets/fastfetch_logo_muted_colours.png";
        height = 10;
        padding = {
            top = 1;
            right = 2;
            left = 2;
        };
    };
    display = {
        separator = ">  ";
        color = {
            #separator = "red";
            seperator = "#71859B";
            keys = "#6DA1A3";
        };
        constants = [
            "─────────────────────────"
            "│"
            ".'--"
        ];
    };
    modules = [
        {
            format = "{#keys}╭{$1}{#keys}{user-name-colored}{at-symbol-colored}{host-name-colored}";
            type = "title";
        }
        {
            key = "{$2}{#31} kernel   ";
            type = "kernel";
        }
        {
            key = "{$2}{#32}󰅐 uptime   ";
            type = "uptime";
        }
#         {
#            type = "disk";
#            keyIcon = "";
#            key = "{$2}{#magenta}{icon} OS Age   ";
#            folders = "/"; # On macOS, "/System/Volumes/VM" works for me
#            format = "{create-time:10} [{days} days]";
#        }
        {
            key = "{$2}{#33}{icon} distro   ";
            type = "os";
        }
        {
            key = "{$2}{#34}󰇄 desktop  ";
            type = "de";
        }
        {
            key = "{$2}{#35} term     ";
            type = "terminal";
        }
        {
            key = "{$2}{#36} shell    ";
            type = "shell";
        }
        {
            key = "{$2}{#35}󰍛 cpu      ";
            type = "cpu";
            showPeCoreCount = true;
            temp = true;
        }
        {
            key = "{$2}{#34}󰍛 gpu      ";
            type = "gpu";
        }
        {
            key = "{$2}{#33}󰉉 disk     ";
            type = "disk";
            folders = "/";
        }
        {
            key = "{$2}{#32} memory   ";
            type = "memory";
        }
        {
            key = "{$2}{#31}󰩟 network  ";
            type = "localip";
            format = "{ipv4} ({ifname})";
        }
        #{
            #format = "{#1}{#keys}├{$1}{#1}{$1}{#3}{$3}";
            #type = "custom";
        #}
        #{
            #key = "{$2}{#39} colors   ";
            #type = "colors";
            #symbol = "circle";
        #}
        {
            format = "{#1}{#keys}╰{$1}{#1}{$1}{#1}{$1}╯";
            type = "custom";
        }
    ];
        };
    };
}