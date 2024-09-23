{
    ...
}: {
    services = {
        hyprpaper = {
            enable = true;
            settings = {
                preload = [
                    "/etc/nixos/hand7s/hm/src/wallpaper.jpg"
                ];
                wallpaper = [
                    "DP-1, /etc/nixos/hand7s/hm/src/wallpaper.jpg" 
                ];
            };
        };
    };
}
