{
    ...
}: {
    programs = {
        waybar = {
            enable = true;
            settings = {
                hand7sBar = {
                    layer = "top";
                    position = "left";

                    modules-left = [ 
                        "custom/gate-top" 
                        "custom/logo" 
                        "custom/gate-middle" 
                        "hyprland/workspaces" 
                        "custom/gate-middle" 
                        "custom/playerctl" 
                        "custom/gate-bottom" 
                    ];
                    modules-center = [ 
                        "custom/gate-top" 
                        "clock" 
                        "custom/gate-bottom" 
                    ];
                    modules-right = [ 
                        "custom/gate-top" 
                        "hyprland/language" 
                        "custom/gate-middle" 
                        "pulseaudio" 
                        "custom/gate-middle" 
                        "tray" 
                        "custom/gate-bottom" 
                    ];

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
                        format-ru = "🇷🇺";
                        format-en = "🇺🇸";
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
                        format = "     ";
                        tooltip = true;
                        tooltip-format = " ~ 𝑠𝑛𝑜𝑤𝑦 𝑝𝑙𝑎𝑐𝑒, 𝑓𝑢𝑙𝑙 𝑜𝑓 𝑓𝑙𝑎𝑘𝑒𝑠! ❄️";
                        on-click = "swaync-client -op";
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
                        on-click = "playerctl play-pause";
                        on-click-right = "playerctl stop";
                        on-scroll-up = "playerctl next";
                        on-scroll-down = "playerctl previous";
                        exec = "playerctl -a metadata --format '{\"text\": \" \", \"tooltip\": \"{{playerName}} : {{markup_escape(title)}}\", \"alt\": \"{{status}}\", \"class\": \"{{status}}\"}' -F";
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
                    background: rgba(57, 33, 34, 0.8);
                    margin: 18px 0px 18px 18px;
                    border: 2px solid rgba(158, 117, 102, 0.95);
                    border-radius: 10px;   
                }

                .modules-center {
                    background: rgba(57, 33, 34, 0.8);
                    margin: 18px 0px 18px 18px;
                    border: 2px solid rgba(158, 117, 102, 0.95);
                    border-radius: 10px;   
                }

                .modules-left {
                    background: rgba(57, 33, 34, 0.8);
                    margin: 18px 0px 18px 18px;
                    border: 2px solid rgba(158, 117, 102, 0.95);
                    border-radius: 10px;   
                }

                #custom-logo {
                    background-image: url("/etc/nixos/hand7s/hm/src/icon.png");
                    background-position: center;
                    background-repeat: no-repeat;
                    background-size: contain; 
                }  
            '';
        };
    };
}
