{ pkgs, ... }: {
  programs.tmux = {
    enable = true;
    mouse = true;
    extraConfig = ''
      set -g default-terminal "tmux-256color"
      set -ag terminal-overrides ",xterm-256color:RGB"

      set -g prefix C-SPACE
      set -g base-index 1
      set -g renumber-windows on
      set -g mode-keys vi
      set -g status-position top
      set -g status-justify absolute-centre
      set -g status-style "bg=default"
      set -g window-status-current-style "fg=#a3be8c bold"
      set -g status-right ""
      set -g status-left "$S"

      bind r source-file ~/.config/tmux/tmux.conf
      
      bind g run-shell ~/.config/tmux/scripts/open-github.sh
    '';
  };
  home.file.".config/scripts/open-github.sh".source = ./scripts/open-github.sh;
}  
