{
  keymaps = [
    {
      mode = "n";
      key = "-";
      action = ":split<cr>";
      options.desc = "split screen horizontal";
    }
    {
      mode = "n";
      key = "|";
      action = ":vsplit<cr>";
      options.desc = "split screen vertical";
    }
    {
      mode = "n";
      key = "<F2>";
      action = ":on<cr>";
      options.desc = "delete all buffer/tabs";
    }
    {
      mode = "n";
      key = "<Tab>";
      action = ":bnext<cr>";
      options.desc = "buffer/tabs next";
    }
    {
      mode = "n";
      key = "<C-Tab>";
      action = ":bd<cr>";
      options.desc = "delete buffer/tabs";
    }
    {
      mode = "n";
      key = "<S-Tab>";
      action = ":bprev<cr>";
      options.desc = "buffer/tabs prev";
    }
    {
      mode = "n";
      key = "<C-S-Right>";
      action = ":vertical resize +2<cr>";
      options.desc = "resize right";
    }
    {
      mode = "n";
      key = "<C-S-Left>";
      action = ":vertical resize -2<cr>";
      options.desc = "resize left";
    }
    {
      mode = "n";
      key = "<C-S-Up>";
      action = ":resize -2<cr>";
      options.desc = "resize up";
    }
    {
      mode = "n";
      key = "<C-S-Down>";
      action = ":resize +2<cr>";
      options.desc = "resize down";
    }
    {
      mode = "n";
      key = "<C-Right>";
      action = "<C-w><Right>";
      options.desc = "hover/change buffer right";
    }
    {
      mode = "n";
      key = "<C-Left>";
      action = "<C-w><Left>";
      options.desc = "hover/chnage buffer left";
    }
    {
      mode = "n";
      key = "<C-Up>";
      action = "<C-w><Up>";
      options.desc = "hover/change buffer up";
    }
    {
      mode = "n";
      key = "<C-Down>";
      action = "<C-w><Down>";
      options.desc = "hover/change buffer down";
    }
    {
      mode = "n";
      key = "<C-a>";
      action = "gg<S-v>G";
      options.desc = "select all";
    }
    {
      mode = "n";
      key = "<M-Up>";
      action = ":m .-2<cr>==";
      options.desc = "move line up";
    }
    {
      mode = "n";
      key = "<M-Down>";
      action = ":m .+1<cr>==";
      options.desc = "move line down";
    }
    {
      mode = "n";
      key = "<M-S-Up>";
      action = "yyP<end>";
      options.desc = "copy line up";
    }
    {
      mode = "n";
      key = "<M-S-Down>";
      action = "yyp<end>";
      options.desc = "copy line down";
    }
    {
      mode = "n";
      key = "<M-h>";
      action = ":ToggleTerm size=30 direction=horizontal<CR>";
      options.desc = "Terminal Horizontal";
    }
    {
      mode = "n";
      key = "<M-i>";
      action = ":ToggleTerm direction=float<CR>";
      options.desc = "Terminal Float";
    }
    {
      mode = "n";
      key = "<M-v>";
      action = ":ToggleTerm size=30 direction=vertical<CR>";
      options.desc = "Terminal Vertical";
    }
    {
      mode = "n";
      key = "<M-t>";
      action = ":ToggleTerm direction=tab<CR>";
      options.desc = "Terminal Tab";
    }
    {
      mode = "n";
      key = "{";
      action = "<";
    }
    {
      mode = "n";
      key = "}";
      action = ">";
    }

    {
      mode = "i";
      key = "<M-Up>";
      action = "<esc>:m .-2<cr>==";
      options.desc = "move line up";
    }
    {
      mode = "i";
      key = "<M-Down>";
      action = "<esc>:m .+1<cr>==";
      options.desc = "move line down";
    }
    {
      mode = "i";
      key = "<M-S-Up>";
      action = "<esc>yyP<end>";
      options.desc = "copy line up ";
    }
    {
      mode = "i";
      key = "<M-S-Down>";
      action = "<esc>yyp<end>";
      options.desc = "copy line down";
    }
    {
      mode = "i";
      key = "<C-x>";
      action = "<C-o>dd";
      options.desc = "cut line";
    }
    {
      mode = "i";
      key = "<C-a>";
      action = "<esc>gg<S-v>G";
      options.desc = "select all";
    }
    {
      mode = "i";
      key = "<C-v>";
      action = "<C-o>v<S-Right>";
      options.desc = "go to visual";
    }
    {
      mode = "i";
      key = "<C-S-v>";
      action = "<esc>pi";
      options.desc = "paste";
    }
    {
      mode = "i";
      key = "<S-Right>";
      action = "<C-Right>";
      options.desc = "move next word";
    }
    {
      mode = "i";
      key = "<S-Left>";
      action = "<C-Left>";
      options.desc = "move prev word";
    }

    {
      mode = "v";
      key = "<M-Up>";
      action = ":m '<-2<cr>gv-gv";
      options.desc = "move selected up";
    }
    {
      mode = "v";
      key = "<M-Down>";
      action = ":m '>+1<cr>gv-gv";
      options.desc = "move selected down";
    }
    {
      mode = "v";
      key = "<M-S-Up>";
      action = "y`]p`]gv-gv";
      options.desc = "copy selected up";
    }
    {
      mode = "v";
      key = "<M-S-Down>";
      action = "yP`[gv-gv";
      options.desc = "copy selected down";
    }
    {
      mode = "v";
      key = "<leader>/";
      action = "gc";
      options.desc = "comment line";
    }

    {
      mode = "v";
      key = "{";
      action = "<gv";
    }
    {
      mode = "v";
      key = "}";
      action = ">gv";
    }
  ];
}
