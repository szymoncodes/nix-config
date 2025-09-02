{ self, ... }: {
  plugins.obsidian = {
    enable = true;
    settings = {
      legacy_commands = false;
      workspaces = [
        {
          name = "Notes";
          path = "~/Documents/Notes";
        }
      ];
      disable_frontmatter = true;
      ui.enable = false;
      templates = {
        subdir = "Templates";
      };
    };
  };
}
