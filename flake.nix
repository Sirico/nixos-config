{
  description = "Darren's NixOS Config";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { self, nixpkgs, home-manager, ... }@inputs:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };
      lib = nixpkgs.lib;
      mkHost = name: configFile:
        lib.nixosSystem {
          inherit system;
          modules = [
            ./hosts/${name}/${configFile}
            home-manager.nixosModules.home-manager
          ];
        };
    in {
      nixosConfigurations = {
        nitro-5 = mkHost "nitro-5" "configuration.nix";
      };
    };
}
