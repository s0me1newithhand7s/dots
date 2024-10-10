{
    pkgs,
    ...
}: {
    stylix = {
        enable = true;
        autoEnable = true;
        polarity = "dark";
        image = ../../src/wallpaper.jpg;
        cursor = {
            package = pkgs.vanilla-dmz;
            name = "Vanilla-DMZ";  
        };
        fonts = {
            emoji = {
                package = pkgs.nerdfonts.override {fonts = ["Iosevka"];};
                name = "Nerd Fonts";
            };
            sizes = {
                applications = 10;
                desktop = 8;
                popups = 10;
                terminal = 8;   
            };
        };
        override = {
            scheme = "hand7s'es red";
            author = "hand7s";
            slug = "stylix";

            base00 = "2a1617";
            base01 = "5d3f3f";
            base02 = "7a5bab";
            base03 = "bb9499";
            base04 = "eea1cf";
            base05 = "f5dddd";
            base06 = "ffebff";
            base07 = "ffede9";
            base08 = "e36b70";
            base09 = "ac878e";
            base0A = "db7356";
            base0B = "a78897";
            base0C = "ca7a79";
            base0D = "b28776";
            base0E = "d8708b";
            base0F = "ec6653";
        };
    };
}
