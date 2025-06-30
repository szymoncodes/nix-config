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

  programs.chromium = {
    enable = true;
    commandLineArgs = [
      "--force-device-scale-factor=2"
    ];
  };

  home.packages = with pkgs; [
    open-vm-tools
    nerd-fonts.jetbrains-mono
    montserrat
    imagemagick
  ];

  imports = [
    ./../../dotfiles/neovim
    ./../../dotfiles/ghostty
    ./../../dotfiles/shell
    ./../../dotfiles/git

    ./../../modules/i3
    ./../../modules/rofi
    ./../../modules/feh
    ./../../modules/polybar

    ./../../themes/stylix-home.nix
  ];
}
