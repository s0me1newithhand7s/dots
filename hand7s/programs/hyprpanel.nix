
{
    config,
    lib,
    ...
}: {
    programs = {
        hyprpanel = {
            enable = lib.mkIf (
                config.home.gui.sessionType == "Hyprland"
            ) true;
            
            hyprland = {
                enable = lib.mkIf (
                    config.home.gui.sessionType == "Hyprland"
                ) true;
            };

            overwrite = {
                enable = lib.mkIf (
                    config.home.gui.sessionType == "Hyprland"
                ) true;
            };

            overlay = {
                enable = lib.mkIf (
                    config.home.gui.sessionType == "Hyprland"
                ) true;
            };

            layout = {
                "bar.layouts" = {
                    "*" = {
                        left = [ 
                            "dashboard" 
                            "workspaces"
                            "media"
                        ];

                        middle = [
                            "clock"
                            "power" 
                        ];

                        right = [
                            "network"
                            "kbinput"
                            "volume" 
                            "systray" 
                            "notifications" 
                        ];
                    };
                };
            };

            settings = {
                scalingPriority = "hyprland";

                tear = false;
                terminal = "ghostty";
                dummy = true;

                hyprpanel = {
                    restartAgs = true;
                    restartCommand = "systemctl --user restart hyprpanel.service";
                };

                bar = {
                    autoHide = "never";
                    launcher = {
                        autoDetectIcon = true;
                    };

                    clock = {
                        showIcon = true;
                        showTime = true;
                        format = "%a, %b %d  %I:%M:%S %p";
                        icon = "󰸗";
                    };

                    volume = {
                        label = true;
                        scrollDown = "wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-";
                        scrollUp = "wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+";
                        rightClick = "wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle";
                    };

                    workspaces = {
                        show_icons = false;
                        showApplicationIcons = true;
                        numbered_active_indicator = "highlight";
                        workspaces = 11;
                    };

                    network = {
                        label = true;
                        showWifiInfo = true;
                        truncation = true;
                        truncation_size = 10;
                    };

                    media = {
                        show_active_only = true;
                    };

                    customModules = {
                        kbLayout = {
                            icon = "󰌌";
                            label = true;
                            labelType = "code";
                            rightClick = "hyprctl switchxkblayout monsgeek-monsgeek-keyboard next";
                        };
                    };
                };

                menus = {
                    transition = "crossfade";
                    transitionTime = 200;

                    clock = {
                        time = {
                            military = false;
                            hideSeconds = true;
                        };

                        weather = {
                            enabled = true;
                            location = "Yelabuga";
                            unit = "metric";
                            key = "ac3df6535cac4448a4c83337252702";
                        };
                    };

                    dashboard = {
                        shortcuts = {
                            left = {
                                shortcut1 = {
                                    command = "google-chrome-stable";
                                    icon = "";
                                    tooltip = "Google Chrome";
                                };

                                shortcut2 = {
                                    command = "spotify";
                                    icon = "";
                                    tooltip = "Spotify";
                                };

                                shortcut3 = {
                                    command = "vesktop";
                                    icon = "";
                                    tooltip = "Discord";
                                };

                                shortcut4 = {
                                    command = "ayugram-desktop";
                                    icon = "";
                                    tooltip = "Telegram";
                                };
                            };

                            right = {
                                shortcut1 = {
                                    command = "fuzzel";
                                    icon = "";
                                    tooltip = "Search";
                                };

                                shortcut3 = {
                                    command = "sleep 5; grimblast --notify --freeze copysave area /home/hand7s/Pictures/Screenshots/$(date '+%y%m%d_%H-%M-%s').png";
                                    icon = "󰄀";
                                    tooltip = "Screenshot";
                                };
                            };
                        };

                        stats = {
                            enable_gpu = false;
                            enabled = true;
                            interval = 1000;
                        };

                        directories = {
                            enabled = true;
                        };

                        powermenu = {
                            avatar = {
                                image = "/home/hand7s/Pictures/pfp.jpg";
                                name = "system";
                            };
                        };
                    };

                    media = {
                        displayTime = true;
                        displayTimeTooltip = true;
                        noMediaText = "-";
                    };

                    power = {
                        confirmation = true;
                        showLabel = true;
                        logout = "hyprctl dispatch exit";
                        reboot = "systemctl reboot";
                        shutdown = "systemctl poweroff";
                        sleep = "systemctl suspend";
                    };

                    volume = {
                        raiseMaximumVolume = false;
                    };
                };

                notifications = {
                    active_monitor = true;
                    cache_actions = true;
                    clearDelay = 50;
                    displayedTotal = 5;
                    showActionsOnHover = true;
                    timeout = 5000;
                };

                theme = {
                    matugen = false;

                    matugen_settings = {
                        contrast = 0;
                        mode = "dark";
                        scheme_type = "monochrome";
                        variation = "standard_1";
                    };

                    font = {
                        name = "Hack Font Nerd Regular";
                        size = "16px";
                        weight = 600;
                    };

                    bar = {
                        transparent = false;
                        floating = true;
                        layer = "top";
                        location = "top";

                        margin_bottom = "0";
                        margin_sides = "20px";
                        margin_top = "20px";

                        border_radius = "10px"; 

                        border = {
                            location = "full";
                            width = "2px";
                        };

                        buttons = {
                            enableBorders = false;
                            monochrome = false;
                            style = "default";
                        };
                    };

                    osd = {
                        enable = true;
                        active_monitor = true;
                        duration = 2500;
                        location = "right";
                        margins = "5px 5px 5px 5px";
                        muted_zero = false;
                        radius = "10px";
                    };
                };
                
                wallpaper = {
                    enable = false;
                    pywal = false;
                    image = "";
                };
            };
        };
    };
}
