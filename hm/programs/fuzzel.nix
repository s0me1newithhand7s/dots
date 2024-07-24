{
    pkgs,
    ...
}: {
    programs = { 
        fuzzel = {
            enable = true;
            package = pkgs.fuzzel;
            settings = {
                main = {
                    terminal = "${pkgs.foot}/bin/foot";
                    layer = "overlay";
                    prompt = "";
                };
                colors = {
                    background = "2603048a";
                    text = "e57875ff";
                    border = "cd5254ee";
                    selection = "a61b26ff";
                    selection-text = "807e87ff";
                };
                border = {
                    width = "2";
                    radius = "10";
                };
            };
        };
    };
}
