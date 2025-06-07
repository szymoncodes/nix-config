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
  programs.firefox.enable = true;

  home.packages = with pkgs; [
    open-vm-tools
    xwallpaper
    nerd-fonts.jetbrains-mono
    montserrat
    _1password-gui
  ];

  imports = [
    ./../../dotfiles/neovim
    ./../../dotfiles/ghostty
    ./../../dotfiles/shell
    ./../../dotfiles/git

    ./../../modules/rofi
  ];
}
