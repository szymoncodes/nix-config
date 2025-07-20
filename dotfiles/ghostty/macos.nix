{ self, config, pkgs, ... }: {
  xdg.configFile."ghostty/config".text = ''
    theme = nord
    background-opacity = 0.75
    background-blur-radius = 40
    macos-titlebar-style = hidden
    font-family = JetBrains Mono
    window-decoration = none
  '';
}
