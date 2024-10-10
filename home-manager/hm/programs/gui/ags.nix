{
    pkgs,
    ...
}: {
    programs = {
        ags = {
            enable = true;
           # configDir = ../../../src;
            extraPackages = with pkgs; [
                gtksourceview
                webkitgtk
                accountsservice
            ];
        };
    };
}
