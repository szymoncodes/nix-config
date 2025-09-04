{ config, pkgs, inputs, ... }: {
  home.username = "szymon";
  home.homeDirectory = "/Users/szymon";

  home.stateVersion = "24.11";

  xdg.enable = true;

  programs.home-manager.enable = true;

  home.sessionVariables = {
   EDITOR = "nvim";
   TERMINAL = "ghostty";
  };

  imports = [
    ./../../dotfiles/neovim
    ./../../dotfiles/ghostty/macos.nix
    ./../../dotfiles/shell
    ./../../dotfiles/git
    ./../../dotfiles/aerospace
    ./../../dotfiles/jankyborders

    ./../../modules/ollama
  ];
}
