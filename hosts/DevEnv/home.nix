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

  home.packages = with pkgs; [
    open-vm-tools
    nerd-fonts.jetbrains-mono
    fzf
    devenv
    blesh
  ];

  imports = [
    ./../../dotfiles/neovim
    # ./../../dotfiles/ghostty
    ./../../dotfiles/shell
    ./../../dotfiles/git
  ];
}
