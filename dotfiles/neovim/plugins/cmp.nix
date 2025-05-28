{ self, ... }: {
  plugins.friendly-snippets.enable = true;
  plugins.blink-cmp = {
    enable = true;
    settings = {
      # setupLSPCapabilities = true;
      keymap = { preset = "enter"; };
    };
  };
}
