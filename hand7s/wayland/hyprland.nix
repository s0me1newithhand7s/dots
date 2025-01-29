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
                    $mon = DP-1, 2560x1440@165.00Hz, 0x0, 1
                    
                    $term = foot
                    $menu = fuzzel
                    $grim = grimblast --notify --freeze copysave area /home/hand7s/Pictures/screenshots/$(date '+%y%m%d_%H-%M-%s').png
                    $mod = ALT
                    $lock = hyprlock -q

                    monitor = $mon_ds

                    exec-once = hyprpaper
                    exec-once = hyprpanel 
                    exec-once = hypridle -q
                    exec-once = systemctl --user start polkit-soteria

                    exec-once = [workspace 1] vesktop
                    exec-once = [workspace 1] ayugram-desktop 
                    exec-once = [workspace 1] element-desktop
                    exec-once = [workspace 2; fullscreen] google-chrome-stable
                    exec-once = [workspace 3; fullscreen] steam
                    exec-once = [workspace 4; fullscreen] code

                    bind = $mod, return, exec, $term
                    bind = $mod, Q, killactive, 
                    bind = $mod, S, exec, $menu
                    bind = $mod, F, fullscreen
                    bind = $mod, L, exec, $lock
                    bind = $mod, R, exec, wlogout

                    bind = $mod, left, movefocus, l
                    bind = $mod, right, movefocus, r
                    bind = $mod, up, movefocus, u
                    bind = $mod, down, movefocus, d
                    
                    bind = $mod, 1, workspace, 1
                    bind = $mod, 2, workspace, 2
                    bind = $mod, 3, workspace, 3
                    bind = $mod, 4, workspace, 4
                    bind = $mod, 5, workspace, 5
                    bind = $mod, 6, workspace, 6
                    bind = $mod, 7, workspace, 7
                    bind = $mod, 8, workspace, 8
                    bind = $mod, 9, workspace, 9
                    bind = $mod, 0, workspace, 10
                    bind = $mod, H, togglespecialworkspace, special
                    
                    bind = $mod SHIFT, 1, movetoworkspace, 1
                    bind = $mod SHIFT, 2, movetoworkspace, 2
                    bind = $mod SHIFT, 3, movetoworkspace, 3
                    bind = $mod SHIFT, 4, movetoworkspace, 4
                    bind = $mod SHIFT, 5, movetoworkspace, 5
                    bind = $mod SHIFT, 6, movetoworkspace, 6
                    bind = $mod SHIFT, 7, movetoworkspace, 7
                    bind = $mod SHIFT, 8, movetoworkspace, 8
                    bind = $mod SHIFT, 9, movetoworkspace, 9
                    bind = $mod SHIFT, 0, movetoworkspace, 10
                    bind = $mod SHIFT, H, movetoworkspace, special

                    bind = $mod, mouse_down, workspace, e+1
                    bind = $mod, mouse_up, workspace, e-1

                    bindm = $mod, mouse:272, movewindow
                    bindm = $mod, mouse:273, resizewindow

                    bind = $mod SHIFT, E, exit,
                    bind = $mod SHIFT, space , togglefloating,
                    bind = $mod SHIFT, S, exec, $grim
                    
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
