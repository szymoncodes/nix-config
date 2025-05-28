{ pkgs, ... }: {
  imports = [
    ./zsh.nix
    ./fastfetch.nix
    ./zoxide.nix
    ./starship.nix
    ./tmux.nix
  ];
}
