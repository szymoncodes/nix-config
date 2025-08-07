{ pkgs, ... }: {
  programs.tmux = {
    enable = true;
    mouse = true;
    baseIndex = 1;
    shortcut = "a";
    extraConfig = ''
      # Refreshing the config
      unbind r
      bind r source-file ~/.config/tmux/tmux.conf

      set -g default-terminal "tmux-256color"
      set -ag terminal-overrides ",xterm-256color:RGB"
      set-option -g status-position top

      set -g default-command /bin/zsh
      set -g default-shell /bin/zsh

      bind-key h select-pane -L
      bind-key j select-pane -D
      bind-key k select-pane -U
      bind-key l select-pane -R

      bind-key -r h resize-pane -L 5
      bind-key -r j resize-pane -D 5
      bind-key -r k resize-pane -U 5
      bind-key -r l resize-pane -R 5
    '';
    plugins = with pkgs; [
      tmuxPlugins.sensible
      tmuxPlugins.vim-tmux-navigator
      {
        plugin = tmuxPlugins.catppuccin;
        extraConfig = ''
          set -g @catppuccin_flavor "mocha"
          set -g @catppuccin_window_style "rounded"
          set -g @catppuccin_status_background "none"
        '';
      }
    ];
  };
}  
