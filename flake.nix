{
    description = "my flake: simple, yet, usable.";
    
    inputs = {
        nixpkgs = { 
            url = "github:nixos/nixpkgs/nixos-unstable";
        };

        nixos-hardware = {
            url = "github:nixos/nixos-hardware";
        };

        nixgl = {
            url = "github:nix-community/nixGL";
        };

        nur = {
            url = "github:nix-community/NUR";
        };

        nixos-generators = {
            url = "github:nix-community/nixos-generators";
            inputs = {
                nixpkgs = {
                    follows = "nixpkgs";
                };
            };
        };

        nixos-anywhere = {
            url = "github:nix-community/nixos-anywhere";
        };

        impermanence = {
            url = "github:nix-community/impermanence";
        };

        home-manager = {
            url = "github:nix-community/home-manager/";
            inputs = {
                nixpkgs = {
                    follows = "nixpkgs";
                };
            };
        };

        disko = {
            url = "github:nix-community/disko";
            inputs = {
                nixpkgs = {
                    follows = "nixpkgs";
                };
            };
        };
        
        lanzaboote = {
            url = "github:nix-community/lanzaboote/v0.4.1";
            inputs = {
                nixpkgs = {
                    follows = "nixpkgs";
                };
            };  
        };

        vscserver = {
            url = "github:nix-community/nixos-vscode-server";
        };

        freesm = {
            url = "github:FreesmTeam/FreesmLauncher";
            inputs = {
                nixpkgs = {
                    follows = "nixpkgs";
                };
            };  
        };

        agenix = {
            url = "github:ryantm/agenix";
        };

        chaotic = {
           url = "github:chaotic-cx/nyx/nyxpkgs-unstable";
        };

        nix-darwin = {
            url = "github:LnL7/nix-darwin";
            inputs = {
                nixpkgs = {
                    follows = "nixpkgs";
                };
            };
        };

        sops-nix = {
            url = "github:Mic92/sops-nix";
        };

        stylix = {
            url = "github:danth/stylix";
        };

        ayugram-desktop = {
            url = "github:ndfined-crp/ayugram-desktop/release";
        };

        hyprland = {
            url = "github:hyprwm/Hyprland?submodules=1";
        };

        hyprcursor = {
            url = "github:VirtCode/hypr-dynamic-cursors";
            inputs = {
                hyprland = {
                    follows = "hyprland";
                };
            };
        };

        hyprspace = {
            url = "github:KZDKM/Hyprspace";
            inputs = {
                hyprland = {
                    follows = "hyprland";
                };
            };
        };

        hyprpanel = {
            url = "github:Jas-SinghFSU/HyprPanel";
            inputs = {
                nixpkgs = {
                    follows = "nixpkgs";
                };
            };
        };

        spicetify-nix = {
            url = "github:Gerg-L/spicetify-nix";
            inputs.nixpkgs.follows = "nixpkgs";
        };
    };
    outputs = { 
        self, 
        nixpkgs,
        sops-nix,
        stylix, 
        chaotic, 
        hyprpanel,
        hyprland,
        hyprspace,
        home-manager,
        nixos-hardware,
        disko,
        vscserver,
        ayugram-desktop,
        spicetify-nix,
        lanzaboote,
        freesm,
        ... 
    } @ inputs: {
        homeConfigurations = {
            hand7s = home-manager.lib.homeManagerConfiguration {
                pkgs = nixpkgs.legacyPackages.x86_64-linux;
                extraSpecialArgs = { 
                    inherit inputs; 
                };
                modules = [
                    ./hand7s/home.nix
                    chaotic.homeManagerModules.default
                    stylix.homeManagerModules.stylix
                    hyprland.homeManagerModules.default
                    spicetify-nix.homeManagerModules.default
                    hyprpanel.homeManagerModules.hyprpanel
                ];
            };
        };
    };
}
