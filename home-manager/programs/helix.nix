{
    ...
}: {
    programs = {
        helix = {
            enable = true;
            defaultEditor = true;
            settings = {
                # theme = "base16_terminal";
                editor = {
                    line-number = "relative";
                    lsp.display-messages = true;
                    cursorline = true;    
                };
            };
        };
    };
}
