{
    pkgs,
    ...
}: {
    home = {
        username = "hand7s";
        homeDirectory = "/home/hand7s/";
        stateVersion = "24.11";
        shellAliases = {
            e = "eza";
            et = "eza -T";
            f = "fastfetch";
            r0 = "run0";
            yz = "yazi";
        };
        sessionVariables = {
            QT_QPA_PLATFORM        = "wayland";
            SDL_VIDEODRIVER        = "wayland";
            CLUTTER_BACKEND        = "wayland";
            GDK_BACKEND            = "wayland";
            XDG_SESSION_TYPE       = "wayland";
            NIXPKGS_ALLOW_UNFREE   = "1";
            NIXPKGS_ALLOW_INSECURE = "1";
            NIXOS_OZONE_WL         = "1";
        };
        packages = with pkgs; [
            # unsorted
            k3d
            dconf
            vanilla-dmz
            

            # gui
            reaper
            vesktop
            obs-studio
            materialgram
            google-chrome
            prismlauncher
            tetrio-desktop
            element-desktop
            iwgtk
            obsidian
            heroic
            
            # rustybox
            sd
            dust
            procs
            gping
            tokei
            bottom
            ripgrep
            pfetch-rs
            pwvucontrol

            # cli
            gh
            nvd
            git
            yt-dlp
            pamixer
            tty-clock
            grimblast
            brightnessctl
            playerctl
            nix-output-monitor
            fastfetch

            # tui
            profanity
            
            # fonts
            (nerdfonts.override { 
                fonts = [
                    "Iosevka"
                    ];
                }
            )
            hack-font
        ];
        keyboard = {
            variant = "qwerty";
            layout = "us, ru";
            options = [
                "grp:caps_toggle"
                "grp_led:scroll"
            ];
        };
    };
}
