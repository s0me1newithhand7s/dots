{
    ...
}: {
    wayland = {
        windowManager = {
            river = {
                enable = true;
                extraConfig = ''
                    riverctl default-layout rivertile
                    rivertile -view-padding 6 -outer-padding 6 &

                    riverctl map normal Super Return spawn foot
                    riverctl map normal Super Q close
                    riverctl map normal Super+Shift E exit
                    riverctl map normal Super+Shift Space toggle-float
                    riverctl map normal Super F toggle-fullscreen

                    riverctl map normal Super Left swap previous
                    riverctl map normal Super Right swap next

                    riverctl map-pointer normal Super BTN_LEFT move-view
                    riverctl map-pointer normal Super BTN_RIGHT resize-view

                    for i in $(seq 1 9)
                    do
                        tags=$((1 << ($i - 1)))
                            riverctl map normal Super $i set-focused-tags $tags
                            riverctl map normal Super+Shift $i set-view-tags $tags
                     done
                '';
            };
        };
    };
}
                