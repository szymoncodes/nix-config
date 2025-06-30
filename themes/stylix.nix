{ self, pkgs, ... }: {
  stylix = {
    enable = true;
    base16Scheme = "${pkgs.base16-schemes}/share/themes/nord.yaml";
    image = ./wallpaper.png;
    polarity = "dark";
  };
}
