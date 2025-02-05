{
    config,
    inputs,
    pkgs,
    lib,
    ...
}: {
    wayland = {
        windowManager = {
            hyprland = {
                enable = lib.mkIf (
                    config.home.gui.sessionType == "Hyprland"
                ) true;
                settings = {
                    general = {
                        gaps_in = "5";
                        gaps_out = "20";
                        border_size = 2;
                        layout = "dwindle";
                    };

                    input = {
                        kb_layout = "us, ru";
                        kb_options = "grp:caps_toggle,grp_led:scroll";
                        numlock_by_default = true;
                        follow_mouse = "1";
                        left_handed = true;
                        sensitivity = "0";
                    };

                    decoration = {
                        active_opacity = "0.85";
                        inactive_opacity = "0.65";
                        fullscreen_opacity = "1.0";
                        rounding = "10";

                        dim_inactive = true;
                        dim_strength = "0.15";
                        dim_special = "0.0";
                        dim_around = "0.05";

                        shadow = {
                            enabled = true;
                            render_power = "4";
                            range = "4";
                            ignore_window = false;
                        };

                        blur = {
                            enabled = true;
                            size = "10";
                            passes = "5";
                        };
                    };

                    misc = {
                        disable_hyprland_logo = true;
                        disable_splash_rendering = true;
                        middle_click_paste = false;
                    };

                    debug = {
                        suppress_errors = true;
                    };

                    plugin = {
                        overview = {
                            showSpecialWorkspace = true;
                            exitOnSwitch = true;
                            switchOnDrop = true;
                            exitOnClick = true;
                        };

                        dynamic-cursors = {
                            enabled = true;
                            threshold = 5;
                            mode = "stretch";

                            stretch = {
                                limit = 3000;
                            };

                            shake = {
                                enabled = true;
                                nearest = false;
                                effects = true;
                            };
                        };
                    };
                };
                extraConfig = ''
                    $term = foot
                    $menu = fuzzel
                    $grim = grimblast --notify copysave area \
                        /home/hand7s/Pictures/screenshots/$(date '+%y%m%d_%H-%M-%s').png
                    $lock = hyprlock -q

                    monitor = DP-1, 2560x1440@165.00Hz, 0x0, 1

                    exec-once = hyprpaper
                    exec-once = hyprpanel 
                    exec-once = hypridle -q
                    exec-once = systemctl --user start polkit-soteria

                    bind = ALT, return, exec, $term
                    bind = ALT, Q, killactive, 
                    bind = ALT, S, exec, $menu
                    bind = ALT, F, fullscreen
                    bind = ALT, L, exec, $lock

                    bind = ALT, left, movefocus, l
                    bind = ALT, right, movefocus, r
                    bind = ALT, up, movefocus, u
                    bind = ALT, down, movefocus, d
                    
                    bind = ALT, 1, workspace, 1
                    bind = ALT, 2, workspace, 2
                    bind = ALT, 3, workspace, 3
                    bind = ALT, 4, workspace, 4
                    bind = ALT, 5, workspace, 5
                    bind = ALT, 6, workspace, 6
                    bind = ALT, 7, workspace, 7
                    bind = ALT, 8, workspace, 8
                    bind = ALT, 9, workspace, 9
                    bind = ALT, 0, workspace, 10
                    bind = ALT, H, togglespecialworkspace, special
                    
                    bind = ALT SHIFT, 1, movetoworkspace, 1
                    bind = ALT SHIFT, 2, movetoworkspace, 2
                    bind = ALT SHIFT, 3, movetoworkspace, 3
                    bind = ALT SHIFT, 4, movetoworkspace, 4
                    bind = ALT SHIFT, 5, movetoworkspace, 5
                    bind = ALT SHIFT, 6, movetoworkspace, 6
                    bind = ALT SHIFT, 7, movetoworkspace, 7
                    bind = ALT SHIFT, 8, movetoworkspace, 8
                    bind = ALT SHIFT, 9, movetoworkspace, 9
                    bind = ALT SHIFT, 0, movetoworkspace, 10
                    bind = ALT SHIFT, H, movetoworkspace, special

                    bind = ALT, mouse_down, workspace, e+1
                    bind = ALT, mouse_up, workspace, e-1

                    bindm = ALT, mouse:272, movewindow
                    bindm = ALT, mouse:273, resizewindow

                    bind = ALT SHIFT, E, exit,
                    bind = ALT SHIFT, space , togglefloating,
                    bind = ALT SHIFT, S, exec, $grim
                    
                    bindl = , XF86AudioPlay, exec, playerctl play-pause
                    bindl = , XF86AudioPrev, exec, playerctl previous
                    bindl = , XF86AudioNext, exec, playerctl next
                    bindl = , XF86AudioStop, exec, playerctl stop

                    bindl = , XF86MonBrightnessUp, exec, brightnessctl s +10%
                    bindl = , XF86MonBrightnessDown, exec, brightnessctl s 10%-

                    bindl = , XF86AudioRaiseVolume, exec, pamixer -i 10
                    bindl = , XF86AudioLowerVolume, exec, pamixer -d 10
                    bindl = , XF86AudioMicMute, exec,  pamixer --default-source -t
                    bindl = , XF86AudioMute, exec, pamixer -t

                    animations {
                        enabled = true

                        bezier = bez, 0.05, 0.9, 0.1, 1.05
                        
                        animation = windows, 1, 7, bez
                        animation = windowsOut, 1, 7, default, popin 80%
                        animation = border, 1, 10, default
                        animation = borderangle, 1, 10, default
                        animation = fade, 1, 7, default
                        animation = workspaces, 1, 7, default
                    }
                '';
                
                plugins = with inputs; [
                    # hyprcursor.packages.${pkgs.system}.hypr-dynamic-cursors
                ];
            };
        };
    };
}
