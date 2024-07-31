{
    pkgs,
    ...
}: {
    home = {
        username = "hand7s";
        homeDirectory = "/home/hand7s/";
        stateVersion = "24.11";
        shellAliases = {
            cat = "bat";
            e = "eza";
            et = "eza -T";
            f = "fastfetch";
        };
        sessionVariables = {
            NIXOS_OZONE_WL = "1";
        };
        packages = with pkgs; [
            sd
            gh
            nvd
            git
            dust
            procs
            tokei
            bottom
            vscode
            _64gram
            vesktop
            ripgrep
            playerctl
            fastfetch
            obs-studio
            hack-font
            nix-output-monitor 

            (nerdfonts.override {fonts = ["Iosevka"];})
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
