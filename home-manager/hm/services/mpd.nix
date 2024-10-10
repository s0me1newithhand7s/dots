{
    ...
}: {
    services = {
        mpd = {
            enable = true;
            musicDirectory = "~/Music";
            extraConfig = ''
                audio_output {
                    type "pipewire"
                    name "My PipeWire Output"
                }
            '';
        };
    };
}
