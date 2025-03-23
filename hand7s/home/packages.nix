{
    pkgs,
    ...
}: {
    home = {
        packages = with pkgs; [
            gh
            sd
            nvd
            git
            dust
            procs
            gping
            dconf
            tokei
            ifuse
            trippy
            bottom
            kubectl
            yt-dlp
            ripgrep
            tty-clock
            libimobiledevice
            nix-output-monitor
        ];
    };
}
