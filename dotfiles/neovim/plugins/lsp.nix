{ self, ... }: {
  plugins.lsp = {
    enable = true;
    servers = {
      lua_ls.enable = true;
      pyright.enable = true;
      nixd.enable = true;
      marksman.enable = true;
    };
  };
}
