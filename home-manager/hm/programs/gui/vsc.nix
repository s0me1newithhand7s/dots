{
    lib,
    pkgs, 
    ...
}: {
    programs = {
        vscode = {
            enable = true;
            extensions = with pkgs.vscode-extensions; [
                bbenoist.nix
                
            ];
            userSettings = {
                "editor.fontFamily" = lib.mkForce "'Hack Regular'";
                "terminal.integrated.fontFamily" = lib.mkForce "'Hack Regular'";
                "workbench.colorTheme" = lib.mkForce "Blazing Red";
                "workbench.sideBar.location" = lib.mkForce "right";
                "workbench.activityBar.location" = lib.mkForce "top";
                "workbench.editor.editorActionsLocation" = lib.mkForce "titleBar";
                "workbench.editor.showTabs" = lib.mkForce "none";
            };
        };
    };
}
