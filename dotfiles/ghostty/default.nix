{ self, ... }: {
    programs.ghostty = {
        enable = true;
	      settings = {
          theme = "rose-pine-moon";
          background-opacity = 0.75;
          background-blur-radius = 40;
          macos-titlebar-style = "hidden";
          font-family = "JetBrains Mono";
          font-size = 11;
          window-decoration = "none";
        };
    };
}
