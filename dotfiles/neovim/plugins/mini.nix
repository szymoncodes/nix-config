{ self, ... }: {
  plugins.mini = {
    enable = true;
    modules = {
      pairs = {};
      comment = {
          mappings = {
            comment = "<leader>/";
            comment_line = "<leader>/";
            comment_visual = "<leader>/";
            textobject = "<leader>/";
          };
      };
      surround = {};
    };
  };
}
