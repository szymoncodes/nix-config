{ self, pkgs, ... }: {
  services.picom = {
    enable = true;
    vSync = true;
    backend = "glx";
    settings = {
      scale = 1;
      corner-radius = 25.0;
      rounded-corners-exclude = [
        "window_type = 'dock'"
      ];
      blur = {
        kern = "3x3box";
        method = "dual_kawase";
        size = 10;
        deviation = 5.0;
        background-exclude = [
          "window_type = 'menu'"
          "window_type = 'dropdown_menu'"
          "window_type = 'popup_menu'"
          "window_type = 'tooltip'"
        ];
      };

      inactive-opacity = 0.7;

      mark-wmwin-focused = false;
      mark-ovredir-focused = false;
      
      detect-client-opacity = true;
      detect-transient = true;

      use-damange = true;

      experimental-backeneds = true;
      glx-no-stencil = true;
      
      log-level = "warn";

      wintypes = {
        menu = { shadow = false; blur-background = false; };
        dropdown_menu = { shadow = false; blur-background = false; };
        popup_menu = { shadow = false; blur-background = false; };
        utility = { shadow = false; blur-background = false; };
      };
    };
  };
}
