{ self, ... }: {
  services.polybar = {
    enable = true;
    script = "if type 'xrandr'; then \nfor m in $(xrandr --query | grep ' connected' | cut -d' ' -f1); do \nMONITOR=$m polybar --reload toph & \ndone \nelse \npolybar --reload toph & \nfi\n";
  };
  home.file."/.config/polybar/config.ini" = { source = ./config.ini; };
}
