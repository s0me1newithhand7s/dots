{
    pkgs,
    ...
}: {
    programs = {
        starship = {
            enable = true;
            enableFishIntegration = true;
            package = pkgs.starship;
            settings = {
                add_newline = true;

                format = ''
                    [╭──╴](bold blue) $os
                    [┆](bold blue) $directory$nix_shell
                    [╰─>](bold blue)
                '';

                right_format = ''$cmd_duration ❲$character❳ at ❗$time'';

                os = {
                    format = "on [($name $codename$version$edition $symbol )]($style)";
                    style = "bold blue";
                    disabled = false;
                };

                os_symbol = {
                    NixOS = "❄️";
                };
                
                character = {
                    success_symbol = "[✓](bold green)";
                    error_symbol = "[✗](bold red)";
                };

                time = {
                    disabled = false;
                    format = " [$time]($style) ";
                    time_format = "%H:%M";
                    utc_time_offset = "local";
                    style = "pale blue";
                };

                cmd_duration = {
                    disabled = false;
                    min_time = 250;
                    show_milliseconds = false;
                    show_notifications = false;
                    format = "was [$duration](bold green)";
                };
            };
        };
    };
}
