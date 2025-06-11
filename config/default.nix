{ pkgs, ... }:
{
  enableMan = false;
  # Import all your configuration modules here
  imports = [
    # ./autocmd.nix
    ./keymaps.nix
    ./settings.nix
    ./plugins
    ./keymaps_vscode.nix
  ];

  extraPackages = with pkgs; [
    ripgrep
    lazygit
    fzf
    fd
  ];
}
