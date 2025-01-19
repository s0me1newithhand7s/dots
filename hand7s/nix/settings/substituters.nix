{
    ...
}: {
    nix = {
        settings = {
            substituters = [
                # cachis
                "https://nix-community.cachix.org/"
                "https://chaotic-nyx.cachix.org/"
                "https://cache.nixos.org/"
                "https://ags.cachix.org"
                "https://hyprland.cachix.org"
                # garnix
                "https://cache.garnix.io"
                # proxied
                "https://nixos-cache-proxy.cofob.dev"
            ];
        };
    }; 
}
