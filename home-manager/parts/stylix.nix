{
    pkgs,
    ...
}: {
    stylix = {
        enable = true;
        autoEnable = true;
        polarity = "dark";
        image = /home/hand7s/wpp/wallhaven-7po5yv.jpg;
        cursor = {
            package = pkgs.apple-cursor;
            name = "Apple Cursor";  
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
    };
}
