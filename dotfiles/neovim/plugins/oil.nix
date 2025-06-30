{ self, ... }: {
  plugins.oil = {
    enable = true;
    settings = {
      keymaps.__raw = ''
        vim.keymap.set("n", "-", require("oil").toggle_float)
    '';
    view_options.show_hidden = true;
    };
  };
}
