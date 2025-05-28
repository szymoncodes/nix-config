{
  description = "NixOS Flake";

  inputs = {
    nixpkgs = {
    	url = "github:NixOS/nixpkgs/nixos-unstable";
    };
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixvim = {
    	url = "github:nix-community/nixvim";
    	inputs.nixpkgs.follows = "nixpkgs";
    };
    hyprland = {
      url = "github:hyprwm/Hyprland";
    };
  };

  outputs = { self, nixpkgs, home-manager, nixvim, hyprland, ... }@inputs: {
    nixosConfigurations.nixOS = nixpkgs.lib.nixosSystem {
      system = "aarch64-linux";
      modules = [
        ./hosts/nixOS/config.nix
        home-manager.nixosModules.home-manager
        {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.users.szymon = ./hosts/nixOS/home.nix;
          home-manager.sharedModules = [
            nixvim.homeManagerModules.nixvim
          ];
        }
      ];
    };
  };
}
