{ self, pkgs, ... }:
{
  services.tailscale = {
    enable = true;
  };
}
