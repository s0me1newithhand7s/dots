{
    pkgs,
    ...
}: {
    nix = {
        package = pkgs.nix;
    };
}