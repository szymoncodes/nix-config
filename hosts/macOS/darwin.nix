{ pkgs, ... }: 
{
  nixpkgs.config.allowUnfree = true;
  environment.systemPackages = with pkgs; [
      # CLIs
      duckdb
      tidy-viewer
      quarto
      micromamba
      fzf
      bat
      ripgrep
      cmatrix
      cava
      fftw
      libtool
      automake
      pkgconf
      portaudio
      iniparser

      # GUI Applications      
      raycast
      spotify
      appcleaner 
      google-chrome 
      obsidian 
      tailscale

      # Fonts
      nerd-fonts.jetbrains-mono
  ];

  homebrew = {
    enable = true;
    casks = [
      "ghostty"
      "vmware-fusion"
      "1password"
      "1password-cli"
    ];
    onActivation.cleanup = "zap";
    onActivation.autoUpdate = true;
    onActivation.upgrade = true;
  };

  system.defaults = {
    dock.autohide = true;
    dock.wvous-br-corner = 1;
    dock.expose-group-apps = true;
    dock.mru-spaces = false;
    dock.show-recents = false;
    dock.persistent-apps = [
      "/Applications/Ghostty.app"
      "${pkgs.obsidian}/Applications/Obsidian.app"
      "${pkgs.google-chrome}/Applications/Google Chrome.app"
      "${pkgs.spotify}/Applications/Spotify.app"
      "/System/Applications/Music.app"
    ];
    finder.FXPreferredViewStyle = "Nlsv";
    loginwindow.GuestEnabled = false;
    NSGlobalDomain.AppleICUForce24HourTime = true;
    NSGlobalDomain.AppleInterfaceStyle = "Dark";
    NSGlobalDomain.ApplePressAndHoldEnabled = false;
    NSGlobalDomain.KeyRepeat = 2;
    NSGlobalDomain.NSWindowShouldDragOnGesture = true;
    finder.FXDefaultSearchScope = "SCcf";
    finder._FXSortFoldersFirst = true;
    finder.AppleShowAllFiles = true;
    finder.CreateDesktop = false;
    finder.NewWindowTarget = "Documents";
    finder.ShowStatusBar = true;
    WindowManager.EnableStandardClickToShowDesktop = false;
  };

  system.startup.chime = false;

  system.primaryUser = "szymon";

  nix.enable = false;	

  nix.settings.experimental-features = "nix-command flakes";
  programs.zsh.enable = true;

  system.stateVersion = 4;

  nixpkgs.hostPlatform = "aarch64-darwin";

  users.users.szymon = {
    name = "szymon";
    home = "/Users/szymon";
  };
}
