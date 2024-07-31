{
    pkgs,
    ...
}: {
    nix = {
        package = pkgs.nix;
        settings = {
            allowed-users = [ "hand7s" "root" ];
            experimental-features = [ "nix-command" "flakes" ];
            sandbox = true;
            trusted-users = [ "hand7s" "root" ];
        };
    }; 
}