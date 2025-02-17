{
  plugins = {
    tailwind-tools = {
      enable = true;
      settings.extension.patterns = {
        javascript = [
          "clsx%(([^)]+)%)"
        ];
        rust = [
          "class=[\"']([^\"']+)[\"']"
        ];
      };
    };

    lsp.servers.tailwindcss.enable = true;

    # lsp.servers.tailwindcss = {
    #   enable = false;
    # };
  };
}
