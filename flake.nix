{
  description = "Stable NixOS config with Home Manager apps";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";
    home-manager.url = "github:nix-community/home-manager/release-25.05";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { self, nixpkgs, home-manager, ... }: {
    nixosConfigurations.nitro-5 = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";

      modules = [
        ./hosts/nitro-5/configuration.nix

        home-manager.nixosModules.home-manager
        {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.users.darren = import ./home/darren/home.nix;
        }
      ];
    };

    # 🔽 NEW: workstation config
    nixosConfigurations.workstation = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";

      modules = [
        ./hosts/workstation/configuration.nix

        home-manager.nixosModules.home-manager
        {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.users.darren = import ./home/darren/home.nix;
        }
      ];
    };
  };
}
