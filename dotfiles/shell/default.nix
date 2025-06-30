{ pkgs, ... }: {
  imports = [
    ./zsh.nix
    ./bash.nix
    ./fastfetch.nix
    ./zoxide.nix
    ./starship.nix
    ./tmux.nix
  ];
}
