{ pkgs, ... }:
{
  extraPackages = with pkgs; [
    leptosfmt
  ];

  extraPlugins = [
    (mkPkgs "tree-sitter-rstml" inputs.tree-sitter-rstml)
  ];

  plugins = {
    rustaceanvim = {
      enable = true;

      settings = {
        default_settings.rust-analyzer = {
          checkOnsave = true;
          rustfmt = {
            overrideCommand = [ "leptosfmt" "--stdin" "--rustfmt" ];
          };
          cargo = {
            loadDirsFromCheck = true;
            buildScripts.enable = true;
          };
        };
      };
    };

    crates.enable = true;
    lsp.servers.rust-analyzer.enable = true;
  };
}
