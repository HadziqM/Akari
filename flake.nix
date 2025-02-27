{
  description = "A nixvim configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    flake-utils.url = "github:numtide/flake-utils";

    blink-compat = {
      url = "github:saghen/blink.compat";
      flake = false;
    };

    rustvim = {
      url = "github:rust-lang/rust.vim";
      flake = false;
    };

    crates = {
      url = "github:saecki/crates.nvim";
      flake = false;
    };

    tree-sitter-rstml.url = "github:rayliwell/tree-sitter-rstml/flake";
  };

  outputs =
    {
      nixvim,
      flake-utils,
      nixpkgs,
      tree-sitter-rstml,
      ...
    }@inputs:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        nixvimLib = nixvim.lib.${system};
        pkgs = import nixpkgs {
          inherit system;
          config.allowUnfree = true;
        };
        nixvim' = nixvim.legacyPackages.${system};
        nixvimModule = {
          inherit pkgs;
          module = {
            imports = [
              ./config
              tree-sitter-rstml.nixvimModule
            ];
          };
          # module = imports ./config; # import the module directly
          # You can use `extraSpecialArgs` to pass additional arguments to your module files
          extraSpecialArgs = {
            inherit inputs;
          } // import ./lib { inherit pkgs; };
        };
        nvim = nixvim'.makeNixvimWithModule nixvimModule;
      in
      {
        checks = {
          # Run `nix flake check` to verify that your config is not broken
          default = nixvimLib.check.mkTestDerivationFromNixvimModule nixvimModule;
        };

        # Lets you run `nix run` to start nixvim
        packages.default = nvim;
      }
    );
}
