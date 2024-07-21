{
    pkgs,
    ...
}: {
    programs = {
        waybar = {
            enable = true;
            package = pkgs.waybar;
            settings = {
                hand7sBar = {
                    layer = "top";
                    position = "left";

                    modules-left = [ "custom/sep-top", "custom/logo", "custom/sep-mid", "hyprland/workspaces", "custom/sep-mid", "custom/player", "custom/sep-bot" ];
                    modules-center = [ "custom/sep-top", "clock", "custom/sep-bot" ];
                    modules-right = [ "custom/sep-top", "hyprland/language", "custom/sep-mid", "pulseaudio", "custom/sep-mid", "tray", "custom/sep-bot" ];

                    "hyprland/workspaces" = {
                        format = "{icon}";
                        format-icons = {
                            "1" = "〡";
                            "2" = "〢";
                            "3" = "〣";
                            "4" =  "〤";
                            "5" = "〥";
                            "6" = "〦";
                            "7" = "〧";
                            "8" = "〨";
                            "9" = "〩";
                            "10" = "〸";
                            "urgent" = "〒";
                        };
                        on-scroll-up = "hyprctl dispatch workspace e+1";
                        on-scroll-down = "hyprctl dispatch workspace e-1";
                        on-click = "activate";
                    };

                    "hyprland/language" = {
                        format = "{}";
                        format-ru = "🇷🇺";
                        format-us = "🇺🇸";
                        on-click = "hyprctl switchxkblayout usb-usb-keyboard next";
                    };

                    "clock" = {
                        format = "{:%H ╎ %M}";
                        rotate = 90;
                        tooltip = true;
                        tooltip-format = "<big>{:%Y %B \t   week: %V }</big>\n<tt>{calendar}</tt>";
                        on-click = "foot -F nix run nixpkgs#tty-clock -- -sbcrC 1 &";
                    };

                    "pulseaudio" = {
                        format = "{volume}%";
                        on-click = "nix run nixpkgs#pwvucontrol";
                    };
                    
                    "tray" = {
                        icon-size = 15;
                        spacing = 10;
                    };

                    "custom/logo" = {
                        format = {     };
                        tooltip = true;
                        tooltip-format = " ~ 𝑠𝑛𝑜𝑤𝑦 𝑝𝑙𝑎𝑐𝑒, 𝑓𝑢𝑙𝑙 𝑜𝑓 𝑓𝑙𝑎𝑘𝑒𝑠! ❄️";
                    };

                    "custom/gate-top" = {
                        format = "╭─╴╶─╮";
                        tooltip = false;
                    };

                    "custom/gate-middle" = {
                        format = "├─╴╶─┤";
                        tooltip = false;
                    };

                    "custom/gate-bottom" = {
                        format = "╰─╴╶─╯";
                        tooltip = false;
                    };

                    "custom/playerctl" = {
                        format = "{icon}";
                        format-icons = {
                            "Paused" = "⏸️";
                            "Playing" = "▶️";
                            "Stopped" = "⏹️";
                        };
                        escapce = true;
                        return-type = "json";
                        max-lenght = 40;
                        on-click = "nix run nixpkgs#playerctl -- play-pause";
                        on-click-right = "nix run nixpkgs#playerctl -- stop";
                        on-scroll-up = "nix run nixpkgs#playerctl -- next";
                        on-scroll-down = "nix run nixpkgs#playerctl -- previos";
                        exec = "nix run nixpkgs#playerctl -- -a metadata --format '{\"text\": \" \", \"tooltip\": \"{{playerName}} : {{markup_escape(title)}}\", \"alt\": \"{{status}}\", \"class\": \"{{status}}\"}' -F";
                    };
                };
            };
            style = ''
                * {
                    font-family: Hack Regular;
                    font-size: 12px;
                    color: rgba(229, 120, 117, 1);
                    padding: 2px;
    
                }

                window#waybar {
                    background: rgba(0, 0, 0, 0.0);
                }

                .modules-right {
                    background: rgba(38, 3, 4, 0.8);
                    margin: 18px 0px 18px 18px;
                    border: 2px solid rgba(166, 27, 38, 0.8);
                    border-radius: 10px;   
                }

                .modules-center {
                    background: rgba(38, 3, 4, 0.75);
                    margin: 18px 0px 18px 18px;
                    border: 2px solid rgba(166, 27, 38, 0.7);
                    border-radius: 10px;   
                }

                .modules-left {
                    background: rgba(38, 3, 4, 0.7);
                    margin: 18px 0px 18px 18px;
                    border: 2px solid rgba(205, 82, 84, 0.75);
                    border-radius: 10px;   
                }

                #custom-logo {
                    background-image: url("nixicon.png");
                    background-position: center;
                    background-repeat: no-repeat;
                    background-size: contain; 
                }  
            ''
        };
    };
}
