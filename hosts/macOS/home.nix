{ config, pkgs, inputs, ... }: {
  home.username = "szymon";
  home.homeDirectory = "/home/szymon";

  home.stateVersion = "24.11";

  xdg.enable = true;

  programs.home-manager.enable = true;

  home.sessionVariables = {
   EDITOR = "nvim";
   TERMINAL = "ghostty";
  };

  imports = [
    ./../../dotfiles/neovim
    ./../../dotfiles/ghostty
    ./../../dotfiles/shell
    ./../../dotfiles/git
    ./../../dotfiles/aerospace
    ./../../dotfiles/jankyborders
  ];
}
