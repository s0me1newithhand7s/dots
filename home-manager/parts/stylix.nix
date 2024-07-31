{
    pkgs,
    ...
}: {
    stylix = {
        enable = true;
        autoEnable = true;
        polarity = "dark";
        image = ../src/wallpaper.png;
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
