{ self, pkgs, ... }: {
  extraPlugins = [(pkgs.vimUtils.buildVimPlugin {
    name = "reactive.nvim";
    src = pkgs.fetchFromGitHub {
      owner = "rasulomaroff";
      repo = "reactive.nvim";
      rev = "e0a22a42811ca1e7aa7531f931c55619aad68b5d";
      hash = "sha256-ox26LQIkNNutdh7OUMER2uveFhykgMRxvGoQ0nIRkkk=";
    };
  })];
  extraConfigLua = ''
    require("reactive").add_preset({
      name = "nord",
      init = function()
        vim.opt.guicursor:append("a:ReactiveCursor")
      end,
      modes = {
        n = {
          -- normal mode configuration
          frozen = true,
          hl = {
            ReactiveCursor = { bg = "#eceff4" },
            CursorLine = { bg = "#eceff480" },
          },
        },
        i = {
          -- insert mode configuration
          hl = {
            ReactiveCursor = { bg = "#a3be8c" },
            CursorLine = { bg = "#d8dee9" },
          },
        },
        [{ "v", "V", "\x16" }] = {
          -- visual mode configuration
          hl = {
            ReactiveCursor = { bg = "#88c0d0" },
            Visual = { bg = "#81a1c1" },
          },
        },
        [{ "no", "nov", "noV", "no\x16" }] = {
          operators = {
            d = {
              -- delete mode config
              hl = {
                ReactiveCursor = { bg = "#bf616a" },
                CursorLine = { bg = "#612c31" },
              },
            },
            c = {
              -- change mode config
              hl = {
                ReactiveCursor = { bg = "#d08770" },
                CursorLine = { bg = "#d8dee9" },
              },
            },
            y = {
              -- yank mode config
              hl = {
                ReactiveCursor = { bg = "#ebcb8b" },
                CursorLine = { bg = "#d8dee9" },
              },
            },
          },
        },
      },
    })
    require("reactive").setup({
      load = "nord",
    })
    '';
}
