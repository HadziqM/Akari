{
  plugins.trouble = {
    enable = true;
    settings.auto_close = true;
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>xx";
      action = "<cmd>Trouble diagnostics toggle<cr>";
      options.desc = "Diagnostics (Trouble)";
    }
    {
      mode = "n";
      key = "<leader>xX";
      action = "<cmd>Trouble diagnostics toggle filter.buf=0<cr>";
      options.desc = "Buffer Diagnostics (Trouble)";
    }
    {
      mode = "n";
      key = "<leader>cs";
      action = "<cmd>Trouble symbols toggle focus=false<cr>";
      options.desc = "Symbols (Trouble)";
    }
    {
      mode = "n";
      key = "<leader>cl";
      action = "<cmd>Trouble lsp toggle focus=false win.position=right<cr>";
      options.desc = "LSP Definitions / references / ... (Trouble)";
    }
    {
      mode = "n";
      key = "<leader>xL";
      action = "<cmd>Trouble loclist toggle<cr>";
      options.desc = "Location List (Trouble)";
    }
    {
      mode = "n";
      key = "<leader>xQ";
      action = "<cmd>Trouble qflist toggle<cr>";
      options.desc = "Quickfix List (Trouble)";
    }
    {
      mode = "n";
      key = "<leader>x";
      action = "+diagnostics/quickfix";
    }
    # {
    #   mode = "n";
    #   key = "<leader>xx";
    #   action = "<cmd>TroubleToggle<cr>";
    #   options = {
    #     silent = true;
    #     desc = "Document Diagnostics (Trouble)";
    #   };
    # }
    # {
    #   mode = "n";
    #   key = "<leader>xX";
    #   action = "<cmd>TroubleToggle workspace_diagnostics<cr>";
    #   options = {
    #     silent = true;
    #     desc = "Workspace Diagnostics (Trouble)";
    #   };
    # }
    # {
    #   mode = "n";
    #   key = "<leader>xt";
    #   action = "<cmd>TroubleToggle todo<cr>";
    #   options = {
    #     silent = true;
    #     desc = "Todo (Trouble)";
    #   };
    # }
    # {
    #   mode = "n";
    #   key = "<leader>xq";
    #   action = "<cmd>TodoQuickFix<cr>";
    #   options = {
    #     silent = true;
    #     desc = "Quickfix List (Trouble)";
    #   };
    # }
  ];
}
