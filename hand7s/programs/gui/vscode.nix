{
    lib,
    pkgs, 
    ...
}: {
    programs = {
        vscode = {
            extensions = with pkgs.vscode-extensions; [
                bbenoist.nix
                ms-vscode-remote.vscode-remote-extensionpack
                redhat.vscode-yaml
                redhat.ansible
                ms-python.python
            ];
            userSettings = lib.mkForce {
                "editor.fontFamily" = "'Hack Regular'";
                "editor.fontSize" = 16;

                "workbench.colorTheme" = "Red One";
                "workbench.sideBar.location" = "right";
                "workbench.activityBar.location" = "top";
                "workbench.editor.editorActionsLocation" = "titleBar";
                "workbench.editor.showTabs" = "none";
            };
        };
    };
}
