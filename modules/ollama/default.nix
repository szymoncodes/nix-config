{ self, pkgs, ... }:
{
  services.ollama = {
    enable = true;
  };
}
