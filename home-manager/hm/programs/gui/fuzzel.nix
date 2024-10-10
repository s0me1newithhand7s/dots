{
    pkgs,
    ...
}: {
    programs = { 
        fuzzel = {
            enable = true;
            settings = {
                main = {
                    terminal = "${pkgs.foot}/bin/foot";
                    layer = "overlay";
                    prompt = "  > ";
                };
                border = {
                    width = "2";
                    radius = "10";
                };
            };
        };
    };
}
