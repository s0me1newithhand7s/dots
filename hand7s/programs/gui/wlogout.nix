{
    ...
}: {
    programs = {
        wlogout = {
            layout = [
            {
                label = "shutdown";
                action = "systemctl poweroff";
                text = "Power Off (S)";
                keybind = "s";
            }
            {
                label = "sleep";
                action = "systemctl sleep";
                text = "Sleep (E)";
                keybind = "e";
            }
            {
                label = "reboot";
                action = "systemctl reboot";
                text = "Reboot (R)";
                keybind = "r";
            }
            ];
        };
    };
}
