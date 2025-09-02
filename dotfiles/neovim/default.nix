{ pkgs, ... }: {
  programs.fd.enable = true;
  programs.nixvim = {
    enable = true;
    dependencies.gcc.enable = true;
    dependencies.ripgrep.enable = true;
    defaultEditor = true;
    colorschemes.nord = {
        enable = true;
       settings = {
          disable_background = true;
          bold = false;
          italic = false;
          uniform_diff_background = true;
          underline = false;
       };
    };
    imports = [
	    ./vim-options.nix
	    ./keymaps.nix
      ./plugins/alpha.nix
      ./plugins/cmp.nix
      ./plugins/lsp.nix
      ./plugins/lualine.nix
      ./plugins/mini.nix
      ./plugins/noice.nix
      ./plugins/obsidian.nix
      ./plugins/oil.nix
      ./plugins/quarto.nix
      ./plugins/render-markdown.nix
      ./plugins/snacks.nix
      ./plugins/telescope.nix
	    ./plugins/treesitter.nix
      ./plugins/undotree.nix
      ./plugins/tmux-navigator.nix
	    ./plugins/web-devicons.nix
      ./plugins/wrapping.nix
    ];
  };
}
