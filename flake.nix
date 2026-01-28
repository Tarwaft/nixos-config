{
  description = "NixOS configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    lobster = {
      url = "github:justchokingaround/lobster";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    
    # temp until zen is officially added
    zen-browser = {
    url = "github:0xc000022070/zen-browser-flake";
    inputs.nixpkgs.follows = "nixpkgs";
  };

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    hyprland.url = "github:hyprwm/Hyprland";
    rose-pine-hyprcursor = {
      url = "github:ndom91/rose-pine-hyprcursor";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.hyprlang.follows = "hyprland/hyprlang";
    };
    nix-gaming.url = "github:fufexan/nix-gaming";
    
    # astal = {
    #   url = "github:aylur/astal";
    #   inputs.nixpkgs.follows = "nixpkgs";
    # };
  };

  outputs = inputs@{ self, nixpkgs, home-manager, hyprland, ... }: let

    system = "x86_64-linux";

    #TODO: this is temporary, can be removed once it is fixed in gcc
      htmlXmlUtilsFix = (final: prev: {
    html-xml-utils = prev.html-xml-utils.overrideAttrs (old: {
      postPatch = (old.postPatch or "") + ''
        substituteInPlace dtd.hash \
          --replace "lookup_element (void)" \
                    "lookup_element (register const char *str, register size_t len)"
      '';
    });
  });


    pkgs = nixpkgs.legacyPackages.${system};
    
    in {
    
    #  packages.${system}.default = astal.lib.mkLuaPackage {
    #   inherit pkgs;
    #   name = "my-shell"; # how to name the executable
    #   src = ./home/desktop/astal; # should contain init.lua

      # add extra glib packages or binaries
      # extraPackages = [
      #   astal.packages.${system}.battery
      #   pkgs.dart-sass
      # ];
   # };
    
    nixosConfigurations = {
      paimon = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        specialArgs = { inherit inputs; };
        modules = [
          ./sc.nix
          ./configuration.nix
          ./paimon.nix
          ./programs.nix
          ./services.nix
          ./vm.nix
          
          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.backupFileExtension = "backup";

            home-manager.users.tarwaft = import ./home.nix;

            # Optionally, use home-manager.extraSpecialArgs to pass arguments to home.nix
            home-manager.extraSpecialArgs = {inherit inputs; inherit system;};
          }
        ];
      };
      vassago = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./vassago.nix
          ./configuration.nix
          ./programs.nix
          ./services.nix

          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.backupFileExtension = "bak";
            home-manager.users.tarwaft = import ./home.nix;

            # Optionally, use home-manager.extraSpecialArgs to pass arguments to home.nix
            home-manager.extraSpecialArgs = {inherit inputs; inherit system;};
          }
        ];
      };
    };
    homeConfigurations."tarwaft@nixos" = home-manager.lib.homeManagerConfiguration {
      #pkgs = nixpkgs.legacyPackages.x86_64-linux;

      modules = [
        {
          wayland.windowManager.hyprland = {
            enable = true;
            # set the flake package
            package = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.hyprland;
            portalPackage = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.xdg-desktop-portal-hyprland;
          };
        }
        # ...
      ];
    };
  };
}
