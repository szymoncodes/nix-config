{ self, ... }: {
  plugins.obsidian = {
    enable = true;
    settings = {
      workspaces = [
        {
          name = "Personal";
          path = "~/Obsidian/Personal";
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
