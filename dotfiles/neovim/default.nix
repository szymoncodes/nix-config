{ pkgs, ... }: {
  programs.fd.enable = true;
  programs.nixvim = {
    dependencies.gcc.enable = true;
    dependencies.ripgrep.enable = true;
    enable = true;
    defaultEditor = true;
    colorschemes.rose-pine = {
        enable = true;
	      settings = {
	        variant = "moon";
          styles.transparency = true;
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
      ./plugins/modicator.nix
      ./plugins/noice.nix
      # ./plugins/obsidian.nix
      ./plugins/oil.nix
      ./plugins/quarto.nix
      ./plugins/reactive.nix
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
