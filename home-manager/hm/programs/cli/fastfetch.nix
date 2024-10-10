{
    ...
}: {
    programs = {
        fastfetch = {
            enable = true;
            settings = {
                logo = {
                    type = "sixel";
                    source = "/home/hand7s/flake/hand7s/hm/src/avatar.jpg";
                    width = 30;
                    height = 15;
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
