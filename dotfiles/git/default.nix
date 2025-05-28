{ pkgs, ... }: {
  programs.git = {
    enable = true;
    package = pkgs.gitFull;
    extraConfig = {
      credential.helper = "manager";
      core.editor = "nvim";
    };
    userName = "Szymon Zubek";
    userEmail = "zubekszymon@gmail.com";
  };
}
