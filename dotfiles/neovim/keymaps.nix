{ self, ... }: {
  globals = {
    mapleader = " ";
    maplocalleader = " ";
  };
  keymaps = [
  # Go back to dashboard
  {
    mode = "n";
    key = "<leader>da";
    action = ":Alpha<CR>";
  }
  # Center screen
  {
    mode = "n";
    key = "<C-d>";
    action = "<C-d>zz";
  }
  {
    mode = "n";
    key = "<C-u>";
    action = "<C-u>zz";
    }
    # Vim and Tmux motions
    {
      mode = "n";
      key = "<C-h>";
      action = "<C-w>h";
    }
    {
      mode = "n";
      key = "<C-l>";
      action = "<C-w>l";
    }
    {
      mode = "n";
      key = "<C-j>";
      action = "<C-w>j";
    }
    {
      mode = "n";
      key = "<C-k>";
      action = "<C-w>k";
    }
    # Moving selected code
    { 
      mode = "v"; 
      key = "J"; 
      action = ":m '>+1<CR>gv=gv"; 
      options = {
        silent = true;
      };
    }
    {
      mode = "v";
      key = "K";
      action = ":m '<-2<CR>gv=gv";
    }
    # Toggling Undotree
    {
      mode = "n";
      key = "<leader>hh";
      action = ":UndotreeToggle<CR>";
    }
    # Run in Quarto
    {
      mode = "n";
      key = "<leader>q";
      action = ":QuartoPreview<CR>";
    }
    # Telescope keymaps
    {
      mode = "n";
      key = "<leader>ff";
      action = ":Telescope find_files<CR>";
    }
    {
      mode = "n";
      key = "<leader>fr";
      action = ":Telescope oldfiles <CR>";
    }
    {
      mode = "n";
      key = "<leader>fg";
      action = ":Telescope live_grep<CR>";
    }
    {
      mode = "n";
      key = "<leader>fb";
      action = ":Telescope file_browser<CR>";
    }
  ];
}
