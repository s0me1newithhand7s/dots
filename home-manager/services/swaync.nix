{ 
    ...
}: {
    services = {
        swaync = {
            enable = true;
            settings = {
                positionX = "right";
                positionY = "top";

                layer = "top";

                control-center-layer = "top";
                control-center-margin-top = 20;
                control-center-margin-bottom = 20;
                control-center-margin-right = 20;
                control-center-margin-left = 20;

                cssPriority = "user";  

                notification-icon-size = 48;
                notification-body-image-height = 100;
                notification-body-image-width = 100;

                widgets = [
                    "inhibitors"
                    "title"
                    "dnd"
                    "notifications"
                ];
            };
            style = ''
                .notification-row {
                    outline: none;
                    background: rgba(38, 3, 4, 0.75);
                    border: 2px solid rgba(166, 27, 38, 0.7);
                    border-radius: 10px;
                }

                .control-center {
                    outline: none;
                    background: rgba(38, 3, 4, 0.75);
                    border: 2px solid rgba(166, 27, 38, 0.7);
                    border-radius: 10px;
                }
            '';
        };
    };
}