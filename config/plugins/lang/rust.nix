{
  pkgs,
  mkPkgs,
  inputs,
  ...
}:
{
  extraPackages = with pkgs; [
    leptosfmt
  ];

  extraPlugins = [
    (mkPkgs "rustvim" inputs.rustvim)
  ];

  extraConfigLua = # lua
    ''
      vim.g.rustfmt_autosave = 1
    '';

  plugins = {
    rustaceanvim = {
      enable = true;

      settings = {
        default_settings.rust-analyzer = {
          checkOnsave = true;
          rustfmt = {
            overrideCommand = [
              "leptosfmt"
              "--stdin"
              "--rustfmt"
            ];
          };
          cargo = {
            loadDirsFromCheck = true;
            buildScripts.enable = true;
          };
        };
      };
    };

    # null-ls.enable = true;

    crates.enable = true;
  };
}
