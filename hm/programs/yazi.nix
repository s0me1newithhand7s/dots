{
    pkgs,
    ...
}: { 
    programs = {
        yazi = {
            enable = true;
            enableFishIntegration = true;
            package = pkgs.yazi;
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
