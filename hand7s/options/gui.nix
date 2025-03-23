{
    lib,
    pkgs,
    config,
    inputs,
    ...
}: 
let 
    cfg = config.home.gui;
in {
    options.home.gui = {
        enable = lib.mkEnableOption ''
            Enabling this option will allow you to activate GUI Software, 
            that exist in my home-manager setup. Enabling this, as you can
            see, is depending on hostname of my system. To bypass this,
            either delete expression in `home.nix`, or change hostname
            to yours.
        '';

        sessionType = lib.mkOption {
            type = lib.types.enum [
                "Sway"
                "River"
                "Hyprland"
                "None"
            ];
            default = "None";
            description = ''
                Because of both Hyprland and river existance in home
                manager config this options is provided. This options is
                depending on hostname. To bypass it, either delete expression 
                in `home.nix`, or change hostname to yours.
                Also, you can add any other desktop type here, just use
                it after this properly.
            '';
        };
    };

    config = lib.mkIf cfg.enable {
        home.packages = with pkgs; [
            vesktop
            (discord.override {
                withVencord = true;
                withOpenASAR = false;
            })
            inputs.ayugram-desktop.packages.${pkgs.system}.ayugram-desktop 
            tetrio-desktop
            element-desktop
            iwgtk
            obsidian
            pwvucontrol
            easyeffects
            inputs.freesm.packages.${pkgs.system}.freesmlauncher
            netbird-ui
            hyprpanel
            hyprpolkitagent
            hyprsysteminfo
            parsec-bin
            hyprpicker
            bitwarden
            autotiling-rs
            sway-audio-idle-inhibit
            mindustry
            grimblast
            sway-contrib.grimshot
            sway-contrib.inactive-windows-transparency
            playerctl
            lan-mouse
            brightnessctl
            wayshot
        ];

        programs = {
            chromium.enable = true;
            firefox.enable = true;
            spicetify.enable = true;
            vscode.enable =  true;
            fuzzel.enable = true;
            ghostty.enable = true;
            yambar.enable = true;
        };

        services = with lib.mkDefault; {
            hypridle.enable = true;
            hyprpaper.enable = true;
        };
    };

    meta.maintainers = with lib.maintainers; [ 
        s0me1newithhan7ds
        # aka hand7s
    ];
}
