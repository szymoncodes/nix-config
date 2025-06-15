{ pkgs, ... }: {
  programs.zsh = {
  enable = true;
    initContent = ''
      eval "$(starship init zsh)"
      fastfetch
      ZSH_HIGHLIGHT_STYLES[path]=none
      ZSH_HIGHLIGHT_STYLES[path_prefix]=none
    '';
    plugins = [
      {
        name = pkgs.zsh-autosuggestions.pname;
        src = pkgs.zsh-autosuggestions.src;
      }
      {
        name = pkgs.zsh-syntax-highlighting.pname;
        src = pkgs.zsh-syntax-highlighting.src;
      }
    ];
  };
}
