{
  keymaps = [
    { mode = "n"; key = "-"; action = ":split<cr>"; option.desc = "split screen horizontal"; }
    { mode = "n"; key = "|"; action = ":vsplit<cr>"; option.desc = "split screen vertical"; }
    { mode = "n"; key = "<F2>"; action = ":on<cr>"; option.desc = "delete all buffer/tabs"; }
    { mode = "n"; key = "<Tab>"; action = ":bnext<cr>"; option.desc = "buffer/tabs next"; }
    { mode = "n"; key = "<C-Tab>"; action = ":bd<cr>"; option.desc = "delete buffer/tabs"; }
    { mode = "n"; key = "<S-Tab>"; action = ":bprev<cr>"; option.desc = "buffer/tabs prev"; }
    { mode = "n"; key = "<C-S-Right>"; action = ":vertical resize +2<cr>"; option.desc = "resize right"; }
    { mode = "n"; key = "<C-S-Left>"; action = ":vertical resize -2<cr>"; option.desc = "resize left"; }
    { mode = "n"; key = "<C-S-Up>"; action = ":resize -2<cr>"; option.desc = "resize up"; }
    { mode = "n"; key = "<C-S-Down>"; action = ":resize +2<cr>"; option.desc = "resize down"; }
    { mode = "n"; key = "<C-Right>"; action = "<C-w><Right>"; option.desc = "hover/change buffer right"; }
    { mode = "n"; key = "<C-Left>"; action = "<C-w><Left>"; option.desc = "hover/chnage buffer left"; }
    { mode = "n"; key = "<C-Up>"; action = "<C-w><Up>"; option.desc = "hover/change buffer up"; }
    { mode = "n"; key = "<C-Down>"; action = "<C-w><Down>"; option.desc = "hover/change buffer down"; }
    { mode = "n"; key = "<C-a>"; action = "gg<S-v>G"; option.desc = "select all"; }
    { mode = "n"; key = "<M-Up>"; action = ":m .-2<cr>=="; option.desc = "move line up"; }
    { mode = "n"; key = "<M-Down>"; action = ":m .+1<cr>=="; option.desc = "move line down"; }
    { mode = "n"; key = "<M-S-Up>"; action = "yyP<end>"; option.desc = "copy line up"; }
    { mode = "n"; key = "<M-S-Down>"; action = "yyp<end>"; option.desc = "copy line down"; }
    { mode = "n"; key = "<M-h>"; action = ":ToggleTerm size=30 direction=horizontal<CR>"; option.desc = "Terminal Horizontal"; }
    { mode = "n"; key = "<M-i>"; action = ":ToggleTerm direction=float<CR>"; option.desc = "Terminal Float"; }
    { mode = "n"; key = "<M-v>"; action = ":ToggleTerm size=30 direction=vertical<CR>"; option.desc = "Terminal Vertical"; }
    { mode = "n"; key = "<M-t>"; action = ":ToggleTerm direction=tab<CR>"; option.desc = "Terminal Tab"; }
    { mode = "n"; key = "{"; action = "<"; }
    { mode = "n"; key = "}"; action = ">"; }


    { mode = "i"; key = "<M-Up>"; action = "<esc>:m .-2<cr>=="; option.desc = "move line up"; }
    { mode = "i"; key = "<M-Down>"; action = "<esc>:m .+1<cr>=="; option.desc = "move line down"; }
    { mode = "i"; key = "<M-S-Up>"; action = "<esc>yyP<end>"; option.desc = "copy line up "; }
    { mode = "i"; key = "<M-S-Down>"; action = "<esc>yyp<end>"; option.desc = "copy line down"; }
    { mode = "i"; key = "<C-x>"; action = "<C-o>dd"; option.desc = "cut line"; }
    { mode = "i"; key = "<C-a>"; action = "<esc>gg<S-v>G"; option.desc = "select all"; }
    { mode = "i"; key = "<C-v>"; action = "<C-o>v<S-Right>"; option.desc = "go to visual"; }
    { mode = "i"; key = "<C-S-v>"; action = "<esc>pi"; option.desc = "paste"; }
    { mode = "i"; key = "<S-Right>"; action = "<C-Right>"; option.desc = "move next word"; }
    { mode = "i"; key = "<S-Left>"; action = "<C-Left>"; option.desc = "move prev word"; }


    { mode = "v"; key = "<M-Up>"; action = ":m '<-2<cr>gv-gv"; option.desc = "move selected up"; }
    { mode = "v"; key = "<M-Down>"; action = ":m '>+1<cr>gv-gv"; option.desc = "move selected down"; }
    { mode = "v"; key = "<M-S-Up>"; action = "y`]p`]gv-gv"; option.desc = "copy selected up"; }
    { mode = "v"; key = "<M-S-Down>"; action = "yP`[gv-gv"; option.desc = "copy selected down"; }
    { mode = "v"; key = "<leader>/"; action = "gc"; option.desc = "comment line"; }

    { mode = "v"; key = "{"; action = "<gv"; }
    { mode = "v"; key = "}"; action = ">gv"; }
  ];
}
