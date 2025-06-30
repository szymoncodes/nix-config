{ pkgs, lib, config, ... }: {
  opts = {
    guicursor = "n-v-i-c:block-Cursor";
    fillchars = { eob = " "; };

    number = true;
    relativenumber = true;
    tabstop = 2;
    softtabstop = 2;
    shiftwidth = 2;
    expandtab = true;

    smartindent = true;

    wrap = false;
    hlsearch = false;
    incsearch = true;

    termguicolors = true;

    scrolloff = 8;
    signcolumn = "yes";

    updatetime = 50;

    swapfile = false;
    backup = false;
    undodir = { __raw = "vim.fn.expand('~/.config') .. '/nvim/.undo//'"; };
    undofile = true;
  };
  highlightOverride = {
    NormalFloat = {
      bg = "NONE";
    };
    FloatBorder = {
      bg = "NONE";
    };
    Search = {
      bg = "NONE";
      fg = "#88c0d0";
    };
  };
  autoCmd = [
    {
      event = [ "FileType" ];
      pattern = [ "help" "alpha" "dashboard" "neo-tree" "Trouble" "lazy" "mason" ];
      callback = { __raw = "function() vim.b.miniindentscope_disable = true end"; };
    }
  ];
}
