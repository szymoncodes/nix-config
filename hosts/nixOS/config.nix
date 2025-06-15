{ config, lib, pkgs, ... }:

{
  imports =
    [ 
      ./hardware-configuration.nix
    ];

  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "nixOS";
  # Pick only one of the below networking options.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.
  networking.networkmanager.enable = true;

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  # Set your time zone.
  time.timeZone = "Europe/London";

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_GB.UTF-8";
  console = {
    font = "Lat2-Terminus16";
    keyMap = "uk";
  };

  services.libinput = {
    enable = true;
    mouse = {
      accelProfile = "flat";
    };
    touchpad = {
      accelProfile = "flat";
    };
  };
  
  services.picom = {
    enable = true;
    backend = "glx";
    settings = {
      scale = 1;
      corner-radius = 25.0;
      blur = {
        method = "dual_kawase";
        size = 10;
        # deviation = 5.0;
      };
    };
  };
  services.xserver = {
    enable = true;
    windowManager.qtile.enable = true;
    dpi = 180;
    upscaleDefaultCursor = true;
    xkb.layout = "gb";
    xkb.model = "macbook";
    xkb.variant = "mac";
    displayManager.sessionCommands = ''
      xwallpaper --zoom ~/Downloads/wallpaper_2.jpg
    '';
  };
  environment.variables = {
    GDK_SCALE = "2";
    GDK_DPI_SCALE = "0.5";
    _JAVA_OPTIONS = "-Dsun.java2d.uiScale=2";
    QT_AUTO_SCREEN_SCALE_FACTOR = "1";
    XCURSOR_SIZE = "96";
    NIXOS_OZONE_WL = "1";
  };

  virtualisation.vmware.guest.enable = true;
  programs.zsh.enable = true;
  nixpkgs.config.allowUnfree = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.szymon = {
    isNormalUser = true;
    extraGroups = [ "networkmanager" "wheel" "audio" ];
    shell = pkgs.zsh;
    packages = with pkgs; [];
  };

  environment.systemPackages = with pkgs; [];

  programs._1password.enable = true;
  programs._1password-gui = {
    enable = true;
    polkitPolicyOwners = ["szymon"];
  };

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # Enable the OpenSSH daemon.
  services.openssh = {
    enable = true;
  };

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  system.stateVersion = "24.11"; # Did you read the comment?

}

