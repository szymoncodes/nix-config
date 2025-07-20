{ self, pkgs, ... }: {
  services.polybar = {
    enable = true;
    script = "PATH=$PATH:${pkgs.i3}/bin polybar bar &";
  };
  home.file."/polybar-collection" = { source = ./config; recursive = true; };
}
