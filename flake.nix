{
  description = "A nixvim configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    nixvim.url = "github:nix-community/nixvim";
    flake-parts.url = "github:hercules-ci/flake-parts";
  };

  outputs = {
    nixvim,
    nixpkgs,
    flake-parts,
    ...
  } @ inputs:
    flake-parts.lib.mkFlake {inherit inputs;} {
      systems = [
        "x86_64-linux"
        "aarch64-linux"
        "x86_64-darwin"
        "aarch64-darwin"
      ];

      perSystem = {system, ...}: let
        # Example if not in vimPlugins
        #gonvim = builtins.fetchGit {
        #  url = "https://github.com/ray-x/go.nvim";
        #  # Always pin to a specific revision (commit hash) for reproducibility
        #  rev = "2f7cd3a20a2940320d5cad338722601ffa3ce31b";
        #};
        nixvimLib = nixvim.lib.${system};
        nixvim' = nixvim.legacyPackages.${system};

        nixvimModule = {
          inherit system; # or alternatively, set `pkgs`
          module = import ./config; # import the module directly
          # You can use `extraSpecialArgs` to pass additional arguments to your module files
          extraSpecialArgs = {
            inherit inputs;
          };
        };
        nvim = nixvim'.makeNixvimWithModule nixvimModule;
      in {

        checks = {
          # Run `nix flake check .` to verify that your config is not broken
          default = nixvimLib.check.mkTestDerivationFromNixvimModule nixvimModule;
        };

        packages = {
          # Lets you run `nix run .` to start nixvim
          default = nvim;
        };
      };
    };
}
