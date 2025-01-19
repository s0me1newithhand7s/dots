{
    config,
    lib,
    ...
}: {
    wayland = {
        windowManager = {
            river = {
                enable = lib.mkIf (
                    config.home.gui.sessionType == "River"
                ) true;
                settings = {
                    border-width = 2;
                    map = {
                        normal = {
                            "Alt Q" = "close";
                            "Alt S" = "spawn fuzzel";
                            "Alt Return" = "spawn foot";
                            "Alt R" = "spawn wlogout";
                            "Alt L" = "spawn hyprlock";
                            "Alt F" = "toggle-fullscreen";

                            "Alt+Shift S" = "spawn grimblast --notify --freeze copysave area /home/hand7s/Pictures/screenshots/$(date '+%y%m%d_%H-%M-%s').png";
                            "Alt+Shift E" = "exit";
                            "Alt+Shift Space" = "toggle-float";

                            "Alt Up" = ''send-layout-cmd rivertile "main-location top"'';
                            "Alt Down" = ''send-layout-cmd rivertile "main-location down"'';
                            "Alt Left" = ''send-layout-cmd rivertile "main-location left"'';
                            "Alt Right" = ''send-layout-cmd rivertile "main-location right"'';

                            "Alt 1" = "set-focused-tags 1";
                            "Alt 2" = "set-focused-tags 2";
                            "Alt 3" = "set-focused-tags 3";
                            "Alt 4" = "set-focused-tags 4";
                            "Alt 5" = "set-focused-tags 5";
                            "Alt 6" = "set-focused-tags 6";
                            "Alt 7" = "set-focused-tags 7";
                            "Alt 8" = "set-focused-tags 8";
                            "Alt 9" = "set-focused-tags 9";

                            "Alt+Shift 1" = "set-view-tags 1";
                            "Alt+Shift 2" = "set-view-tags 2";
                            "Alt+Shift 3" = "set-view-tags 3";
                            "Alt+Shift 4" = "set-view-tags 4";
                            "Alt+Shift 5" = "set-view-tags 5";
                            "Alt+Shift 6" = "set-view-tags 6";
                            "Alt+Shift 7" = "set-view-tags 7";
                            "Alt+Shift 8" = "set-view-tags 8";
                            "Alt+Shift 9" = "set-view-tags 9";
                            
                        };
                        map-pointer = {
                            normal = {
                                "Alt BTN_LEFT" = "move-view";
                                "Alt BTN_RIGHT" = "resize-view";
                            };
                        };
                    };
                };
            };
        };
    };
}