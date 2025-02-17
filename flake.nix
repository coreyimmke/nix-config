{
  description = "Config flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11";
    home-manager = {
      url = "github:nix-community/home-manager/release-24.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, home-manager, ... }@inputs: 

    let
      # function to create a system based on provided args
      mksys = {
        system,
        user,
        machinePath,
        homeManagerPath
      }: {
        system = system;
        modules = [
          machinePath
          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.${user} = import homeManagerPath;
          }
        ];
      };
    in {
      nixosConfigurations = {
        pavilion = nixpkgs.lib.nixosSystem (
          mksys {
            system = "x86_64-linux";
            user = "corey";
            machinePath = ./machine/pavilion;
            homeManagerPath = ./machine/pavilion/home.nix;
          }
        );
      };
    };
}
