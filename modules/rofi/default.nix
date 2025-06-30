{ self, ... }: {
  programs.rofi = {
    enable = true;
  };
  home.file."/.config/rofi/config.rasi".text = ''
    configuration {
      modes: [ combi ];
      combi-modes: [ drun, filebrowser ];
    }
    
    @theme "spotlight"

    window {
      width: 50%;
    }
  '';

  imports = [
    ./themes/spotlight.nix
    ./themes/blur.nix
    ./themes/nord.nix
  ];
}
