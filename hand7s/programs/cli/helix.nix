{
    pkgs,
    ...
}: {
    programs = {
        helix = {
            enable = true;
            defaultEditor = true;
            extraPackages = with pkgs; [
                nixd
                nixfmt-rfc-style
            ];
            
            settings = {
                editor = {
                    line-number = "relative";
                    lsp.display-messages = true;
                    cursorline = true;    
                };
            };
            
            languages = {
                language-servers = {
                    nixd = {
                        command = "nixd";
                        args = [
                            "--inlay-hints=true"  
                        ];
                    };
                };
                language = [
                    {
                        name = "nix";
                        comment-token = "#";
                        indent = {
                            tab-width = 2;
                            unit = "  ";    
                        };
                        
                        injection-regex = "nix";
                        
                        file-types = [
                            "nix"  
                        ];
                        
                        language-servers = [
                            "nixd"  
                        ];
                    }
                ];
            };
        };
    };
}
