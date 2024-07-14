{
    pkgs,
    ...
}: {
    programs = {
        helix = {
            enable = true;
            defaultEditor = true;
            package = pkgs.helix;
            settings = {
                theme = "base16_terminal";
                editor = {
                    line-number = "relative";
                    shell = "bash";
                    cursorline = true;    
                };
            };
        };
    };
}