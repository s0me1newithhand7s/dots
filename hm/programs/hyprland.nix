{
    pkgs,
    ...
}: {
    wayland = {
        windowManager = {
            hyprland = {
                enable = true;
                package = pkgs.hyprland;
                settings = {
                    general = {
                        gaps_in = "5";
                        gaps_out = "20";
                        border_size = 2;
                        "col.active_border" = "rgba(CD5254ee) rgba(A61B26ee) 300deg";
                        "col.inactive_border" = "rgba(A61B26ee) rgba(CD5254ee) 300deg";
                        layout = "dwindle";
                    };

                    input = {
                        kb_layout = "us, ru";
                        kb_options = "grp:caps_toggle";
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

                        drop_shadow = true;
                        shadow_range = "10";
                        shadow_render_power = "4";
                        shadow_scale = "5";
                        shadow_offset = "0 0";
                        shadow_ignore_window = false;

                        "col.shadow_inactive" = "rgb(000000)";
                        "col.shadow" = "rgba(0e0e0eee)";
                    };

                    blur = {
                        enabled = true;
                        size = "10";
                        passes = "5";
                        popups = false;
                        special = false;
                         xray = true
                    };

                    animations = {
                        enabled = true;

                        bezier = "bez, 0.05, 0.9, 0.1, 1.05";
                        animation = "windows, 1, 7, bez";
                        animation = "windowsOut, 1, 7, default, popin 80%";
                        animation = "border, 1, 10, default";
                        animation = "borderangle, 1, 8, default";
                        animation = "fade, 1, 7, default";
                        animation = "workspaces, 1, 6, default";
                    };

                    misc = {
                        disable_hyprland_logo = true;
                        disable_splash_rendering = true;
                        font_family = "Hack";
                        middle_click_paste = false;
                    };
                };
                extraConfig = ''
                    $mon1 = DP-1
                    $term = foot
                    $menu = fuzzel
                    $grim = grimblast --notify --freeze copysave area /home/hand7s/Pictures/screenshots/$(date '+%y%m%d_%H-%M-%s').png
                    $mod = SUPER
                    $lock = hyprlock

                    monitor = $mon1

                    exec-once = hyprpaper 
                    exec-once = hypridle -q
                    exec-once = vesktop

                    bind = $mod, return, exec, $term
                    bind = $mod, Q, killactive, 
                    bind = $mod SHIFT, E, exit, 
                    bind = $mod SHIFT, space , togglefloating, 
                    bind = $mod, S, exec, $menu
                    bind = $mod SHIFT, S, exec, $grim
                    bind = $mod, F, fullscreen
                    bind = $mod, L, exec, $lock

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
                    bind = $mod, mouse_down, workspace, e+2
                    bind = $mod, mouse_up, workspace, e-2

                    bindm = $mod, mouse:272, movewindow
                    bindm = $mod, mouse:273, resizewindow
                ''
            };
        };
    };
}
