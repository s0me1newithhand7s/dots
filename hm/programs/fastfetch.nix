{
    pkgs,
    ...
}: {
    programs = {
        fastfetch = {
            enable = true;
            package = pkgs.fastfetch;
            settings = {
                logo = {
                    type = "sixel";
                    source = "logo.jpg";
                    width = 32;
                    height = 16;
                    padding = {
                        top = 1;
                        right = 1;
                        left = 1;
                    };
                };
                display = {
                    color = {
                        separator = "red";
                        keys = "white";
                    };
                    separator = " ‣ ";
                };
                modules = [
                    {
                        type = "custom";
                        format = "┌─────────────────────┤ h/w ├─────────────────────┐";
                    }
                    {
                        type = "host";
                        key = "┆";
                    }
                    {
                        type = "cpu";
                        key = "┆";
                    }
                    {
                        type = "gpu";
                        key = "┆";
                    }
                    {
                        type = "disk";
                        key = "┆";
                    }
                    {
                        type = "memory";
                        key = "┆";
                    }
                    {
                        type = "display";
                        key = "┆";
                    }
                    {
                        type = "custom";
                        format = "├─────────────────────┤ s/w ├─────────────────────┤";
                    }
                    {
                        type = "os";
                        key = "┆";
                    }
                    {
                        type = "kernel";
                        format = "{1} {2}";
                        key = "┆";
                    }
                    {
                        type = "de";
                        key = "┆";
                    }
                    {
                        type = "wm";
                        key = "┆";
                    }
                    {
                        type = "shell";
                        key = "┆";
                    }
                    {
                        type = "terminal";
                        key = "┆";
                    }
                    {
                        type = "packages";
                        key = "┆";
                    }
                    {
                        type = "uptime";
                        key = "┆";
                    }
                    {
                        type = "media";
                        key = "┆";
                    }
                    {
                        type = "custom";
                        format = "└─────────────────────────────────────────────────┘";
                    }
                ];
            };
        };
    };
}