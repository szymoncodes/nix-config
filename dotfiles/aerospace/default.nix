{ self, pkgs, ... }: {
  programs.aerospace = {
    enable = true;
    userSettings = {
      after-login-command = [];
      after-startup-command = [];
      exec-on-workspace-change = [
        "/bin/bash"
        "-c"
        "/run/current-system/sw/bin/sketchybar --trigger aerospace_workspace_change FOCUSED_WORKSPACE=$AEROSPACE_FOCUSED_WORKSPACE"
      ];

      start-at-login = true;

      enable-normalization-flatten-containers = true;
      enable-normalization-opposite-orientation-for-nested-containers = true;

      accordion-padding = 30;

      default-root-container-layout = "tiles";

      default-root-container-orientation = "auto";

      on-focused-monitor-changed = ["move-mouse monitor-lazy-center"];

      automatically-unhide-macos-hidden-apps = false;

      key-mapping.preset = "qwerty";

      on-window-detected = [
       {
        "if" = {
          app-name-regex-substring = "Finder";
        };
        run = [ "layout floating" ];
       }
      ];

      gaps = {
          inner.horizontal = 10;
          inner.vertical =   10;
          outer.left =       10;
          outer.bottom =     10;
          outer.top =        10;
          outer.right =      10;
      };

      mode.main.binding = {
        alt-slash = "layout tiles horizontal vertical";
        alt-comma = "layout accordion horizontal vertical";

        alt-h = "focus left";
        alt-j = "focus down";
        alt-k = "focus up";
        alt-l = "focus right";

        alt-shift-h = "move left";
        alt-shift-j = "move down";
        alt-shift-k = "move up";
        alt-shift-l = "move right";

        alt-minus = "resize smart -50";
        alt-equal = "resize smart +50";

        alt-q = "workspace 1";
        alt-w = "workspace 2";
        alt-e = "workspace 3";
        alt-r = "workspace 4";
        alt-t = "workspace 5";

        alt-shift-q = "move-node-to-workspace 1";
        alt-shift-w = "move-node-to-workspace 2";
        alt-shift-e = "move-node-to-workspace 3";
        alt-shift-r = "move-node-to-workspace 4";
        alt-shift-t = "move-node-to-workspace 5";

        alt-tab = "workspace-back-and-forth";

        alt-shift-tab = "move-workspace-to-monitor --wrap-around next";

        alt-shift-semicolon = "mode service";
        alt-shift-f = "mode app";
      };

      mode.service.binding = {
        esc = ["reload-config" "mode main"];
        r = ["flatten-workspace-tree" "mode main"]; 
        f = ["layout floating tiling" "mode main"];
        backspace = ["close-all-windows-but-current" "mode main"];

        alt-shift-h = ["join-with left" "mode main"];
        alt-shift-j = ["join-with down" "mode main"];
        alt-shift-k = ["join-with up" "mode main"];
        alt-shift-l = ["join-with right" "mode main"];

        down = "volume down";
        up = "volume up";
        shift-down = [
          "volume set 0"
          "mode main"
        ];
      };

      mode.app.binding = {
        alt-t = ["exec-and-forget open -a /Applications/Ghostty.app" "mode main"];
        alt-b = ["exec-and-forget open -a ${pkgs.google-chrome}/Applications/Google Chrome.app" "mode main"];
        alt-m = ["exec-and-forget open -a /System/Applications/Music.app" "mode main"];
        alt-f = ["exec-and-forget open -a /System/Library/CoreServices/Finder.app" "mode main"];
      };
    };
  };
}
