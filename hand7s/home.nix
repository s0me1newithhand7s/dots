{
    config,
    pkgs,
    lib,
    ...
}: {
    imports = [
        ./fonts/fonts.nix
        ./stylix/stylix.nix
        ./options/gui.nix

        ./wayland/hyprland.nix
        ./wayland/river.nix

        ./nix/package.nix
        ./nix/settings/substituters.nix
        ./nix/settings/trusted-public-keys.nix

        ./services/hypridle.nix
        ./services/hyprpaper.nix

        ./programs/cli/bat.nix
        ./programs/cli/eza.nix
        ./programs/cli/fish.nix
        ./programs/cli/fzf.nix
        ./programs/cli/git.nix
        ./programs/cli/helix.nix
        ./programs/cli/index.nix
        ./programs/cli/starship.nix
        ./programs/cli/yazi.nix
        ./programs/cli/zoxide.nix

        ./programs/gui/chrome.nix
        ./programs/gui/fuzzel.nix
        ./programs/gui/foot.nix
        ./programs/gui/hyprlock.nix
        ./programs/gui/hyprpanel.nix
        ./programs/gui/spicetify.nix
        ./programs/gui/vscode.nix
        ./programs/gui/waybar.nix
        ./programs/gui/wlogout.nix
    ];
    home = {
        username = "hand7s";
        homeDirectory = "/home/hand7s/";
        stateVersion = "24.11";

        gui = {
            enable = lib.mkIf (
                builtins.getEnv "HOSTNAME" == "s0mePC-nix" || builtins.getEnv "HOSTNAME" == "s0melapt0p-nix"
            ) true;


            sessionType = if (
                builtins.getEnv "HOSTNAME" == "s0mePC-nix"
            ) then (
                "Hyprland"
            ) else if ( 
                builtins.getEnv "HOSTNAME" == "s0melapt0p-nix"
            ) then (
                "River"
            ) else (
                "None"
            );
        };

        shellAliases = {
            e = "eza";
            et = "eza -T";
            yz = "yazi";
            k = "kubectl"; 
        };
        
        sessionVariables = {
            QT_QPA_PLATFORM = "wayland";
            SDL_VIDEODRIVER = "wayland";
            CLUTTER_BACKEND = "wayland";
            GDK_BACKEND = "wayland";
            XDG_SESSION_TYPE = "wayland";
            XDG_CURRENT_DESKTOP = "wayland";
            XDG_SESSION_DESKTOP = "wayland";
            NIXPKGS_ALLOW_UNFREE = "1";
            NIXPKGS_ALLOW_INSECURE = "1";
            NIXOS_OZONE_WL = "1";
            NIX_SSHOPTS = "-p 6969";
        };
        
        packages = with pkgs; [
            gh
            sd
            nvd
            git
            dust
            procs
            gping
            dconf
            tokei
            bottom
            kubectl
            yt-dlp
            pamixer
            ripgrep
            tty-clock
            grimblast
            playerctl
            hyprcursor
            microfetch
            brightnessctl
            nix-output-monitor
            # fonts
            nerd-fonts.iosevka
            hack-font
        ];

        pointerCursor = {
            hyprcursor = {
                enable = true; 
            };
        };
        
        keyboard = {
            variant = "qwerty";
            layout = "us, ru";
            options = [
                "grp:caps_toggle"
            ];
        };
    };
}
