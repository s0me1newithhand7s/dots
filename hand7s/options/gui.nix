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
            '';
        };
    };

    config = lib.mkIf cfg.enable {
        home.packages = with pkgs; [
            vesktop
            obs-studio
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
        ];

        programs = with lib.mkDefault; {
            chromium.enable = true;
            foot.enable = true;
            fuzzel.enable = true;
            hyprlock.enable = true;
            hyprpanel.enable = true;  
            # spicetify.enable = true;
            vscode.enable =  true;
            waybar.enable = true;
            wlogout.enable = true;
        };

        services = with lib.mkDefault; {
            hypridle.enable = true;
            hyprpaper.enable = true;
            swaync.enable = false;
        };
    };

    meta.maintainers = with lib.maintainers; [ 
        s0me1newithhan7ds
        # aka hand7s
    ];
}
