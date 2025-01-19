{
    pkgs,
    ...
}: {
    programs = {
        chromium = {
            package = pkgs.google-chrome;
        };
    };
}