{ self, config, pkgs, ... }: {
  xdg.configFile."ghostty/config".text = ''
    theme = rose-pine-moon
    background-opacity = 0.75
    background-blur-radius = 40
    macos-titlebar-style = hidden
    font-family = JetBrains Mono
    window-decoration = none
  '';
}
