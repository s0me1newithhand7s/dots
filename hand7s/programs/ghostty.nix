{
    pkgs,
    ...
}: {
    programs = {
        ghostty = {
            enableFishIntegration = true;
            installBatSyntax = true;
            settings = {
                title = "tty /// $PWD";

                command = "${pkgs.fish}/bin/fish --login --interactive";

                keybind = [
                    "ctrl+shift+d=new_split:right"
                    "ctrl+shift+h=goto_split:left"
                    "ctrl+shift+l=goto_split:right"
                ];
            };
        };
    };
}