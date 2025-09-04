{ pkgs, ... }: 
{
  imports = [
    ./../../modules/tailscale
  ];
  nixpkgs.config.allowUnfree = true;
  environment.systemPackages = with pkgs; [
    # CLIs
    quarto
    devenv
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
    obsidian 
    tailscale

    # Fonts
    nerd-fonts.jetbrains-mono
    google-fonts
    merriweather
  ];

  homebrew = {
    enable = true;
    casks = [
      "ghostty"
      "1password"
      "1password-cli"
      "zen"
      "google-chrome"
      "affinity-photo"
      "affinity-designer"
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
      "/Applications/Google Chrome.app"
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
  
  nix.settings.trusted-users = [ "root" "@admin" "szymon"];
  
  programs.zsh.enable = true;

  system.stateVersion = 4;

  nixpkgs.hostPlatform = "aarch64-darwin";

  users.users.szymon = {
    name = "szymon";
    home = "/Users/szymon";
  };
}
