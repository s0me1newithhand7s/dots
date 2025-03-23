{
    ...
}: {
    services = {
        hypridle = {
            settings = {
                general = {
                    lock_cmd = "pidof hyprlock || hyprlock";
                    before_sleep_cmd = "hyprpanel -q";
                    after_sleep_cmd = "hyprctl dispatch dpms on && hyprpanel";
                };

                listener = [
                    {
                        timeout = 300;
                        on-timeout = "brightnessctl -s set 10";
                        on-resume = "brightnessctl -r";
                    }

                    {
                        timeout = 600;
                        on-timeout = "hyprlock";
                    }

                    {
                        timeout = 900;
                        on-timeout = "systemctl suspend";
                    }
                ];
            };
        };
    };
}
