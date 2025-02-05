{
    pkgs,
    lib,
    ...
}: {
    programs = {
        hyprpanel = {
            hyprland = {
                enable = true;
            };

            overwrite = {
                enable = true;
            };

            systemd = {
                enable = lib.mkDefault true;
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
                        ];
                        right = [
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
                terminal = "$TERM";
                dummy = true;

                bar = {
                    autoHide = "never";
                    launcher = {
                        autoDetectIcon = true;
                    };
                    workspaces = {
                        show_icons = true;
                        workspaces = 10;
                    };
                };

                menus = {
                    clock = {
                        time = {
                            military = true;
                            hideSeconds = true;
                        };
                        weather = {
                            enabled = true;
                            location = "Yelabuga";
                            unit = "metric";
                        };
                    };

                    dashboard = {
                        directories = {
                            enabled = false;
                        };
                    };
                };

                theme = {
                    bar = {
                        transparent = false;
                        floating = true;
                        outer_spacing = "1.3em";
                    };

                    font = {
                        name = "Hack Font";
                        size = "16px";
                    };
                };

                wallpaper = {
                    enable = true;
                    image = "/home/hand7s/flake/hand7s/stylix/wallpaper.jpg";
                    pywal = false;
                };
            };
        };
    };
}
