{ self, ... }: {
  plugins.wrapping = {
    enable = true;
    settings = {
      auto_set_mode_filetype_allowlist = [
      "markdown"
      ];
      create_commands = false;
    };
  };
}
