{
    ...
}: {
    services = {
        hypridle = {
            enable = true;
            settings = {
                general = {
                    lock_cmd = "pidof hyprlock || hyprlock";
                    before_sleep_cmd = "loginctl lock-session";
                    after_sleep_cmd = "hyprctl dispatch dpms on";
                };
                listener ={
                    timeout = 300;
                    on-timeout = "brightnessctl -s set 10";
                    on-resume = "brightnessctl -r";
                };
                listener ={
                    timeout = 600;
                    on-timeout = "hyprlock --immediate";
                };
                listener ={
                    timeout = 630;
                    on-timeout = "hyprctl dispatch dpms off";
                    on-resume = "hyprctl dispatch dpms on";
                };
                listener ={
                    timeout = 900;
                    on-timeout = "systemctl suspend";
                };
            };
        };
    };
}