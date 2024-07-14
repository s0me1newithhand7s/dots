{
    pkgs,
    ...
}: { 
    programs = {
        yazi = {
            enable = true;
            enableFishIntegration = true;
            package = with pkgs; [ yazi ];
            settings = {
                manager = {
                    sort_by = "alphabetical";
                };
            };
            keymap = {};
            theme = {};
        };
    };
}