{ nixpkgs, home-manager }:
{ system, modules ? [] }:

nixpkgs.lib.nixosSystem {
  inherit system;
  specialArgs = { inherit nixpkgs home-manager; };
  modules = [
    home-manager.nixosModules.home-manager
    {
      nix.settings.experimental-features = [ "nix-command" "flakes" ];
      home-manager.useGlobalPkgs = true;
      home-manager.useUserPackages = true;
    }
  ] ++ modules;
}

