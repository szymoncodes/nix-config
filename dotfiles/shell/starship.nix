{ pkgs, lib, ... }: {
  programs.starship = {
    enable = true;
    enableZshIntegration = true;
    settings = {
      format = lib.concatStrings [
        "[](nord3)"
        "$os"
        "$username"
        "[](bg:nord11 fg:nord3)"
        "$shell"
        "[](bg:nord12 fg:nord11)"
        "$directory"
        "[](fg:nord12 bg:nord13)"
        "[](fg:nord13 bg:nord14)"
        "$git_branch"
        "$git_status"
        "[](fg:nord14 bg:nord9)"
        "$time"
        "[ ](fg:nord9)"
        "$line_break$character"
      ];

      palette = "nord";
      palettes.nord = {
        nord0  = "#2E3440"; 
        nord1  = "#3B4252";
        nord2  = "#434C5E";
        nord3  = "#4C566A"; 
        nord4  = "#D8DEE9"; 
        nord5  = "#E5E9F0";
        nord6  = "#ECEFF4"; 
        nord7  = "#8FBCBB";
        nord8  = "#88C0D0";
        nord9  = "#81A1C1";
        nord10 = "#5E81AC";
        nord11 = "#BF616A"; 
        nord12 = "#D08770"; 
        nord13 = "#EBCB8B"; 
        nord14 = "#A3BE8C"; 
        nord15 = "#B48EAD"; 
      };

      os = {
        disabled = false;
        style = "bg:nord3 fg:nord6";
      };
      os.symbols = {
        Windows = "󰍲";
        Ubuntu = "󰕈";
        SUSE = "";
        Raspbian = "󰐿";
        Mint = "󰣭";
        Macos = "󰀵";
        Manjaro = "";
        Linux = "󰌽";
        Gentoo = "󰣨";
        Fedora = "󰣛";
        Amazon = "";
        Android = "";
        Arch = "󰣇";
        Artix = "󰣇";
        CentOS = "";
        Debian = "󰣚";
        Redhat = "󱄛";
        RedHatEnterprise = "󱄛";
      };

      username = {
        show_always = true;
        style_user = "bg:nord3 fg:nord6";
        style_root = "bg:nord3 fg:nord11";
        format = "[ $user ]($style)";
      };

      shell = {
        disabled = false;
        format = "[ $indicator ](fg:nord6 bg:nord11)";
        bash_indicator = " bash";
        zsh_indicator = " zsh";
        fish_indicator = " fish";
        powershell_indicator = " pwsh";
      };

      directory = {
        style = "fg:nord1 bg:nord12";
        format = "[ $path ]($style)";
        truncation_length = 3;
        truncation_symbol = "…/";
        substitutions = {
          "Documents" = "󰈙 ";
          "Downloads" = " ";
          "Music"     = "󰝚 ";
          "Pictures"  = " ";
          "Developer" = "󰲋 ";
        };
      };

      git_branch = {
        symbol = "";
        style = "bg:nord14";
        format = "[[ $symbol $branch ](fg:nord1 bg:nord14)]($style)";
      };

      git_status = {
        style = "bg:nord14";
        format = "[[($all_status$ahead_behind )](fg:nord1 bg:nord14)]($style)";
      };

      time = {
        disabled = false;
        time_format = "%R";
        style = "bg:nord9";
        format = "[[  $time ](fg:nord6 bg:nord9)]($style)";
      };

      line_break = { disabled = false; };

      character = {
        disabled = false;
        success_symbol = "[](bold fg:nord14)";
        error_symbol   = "[](bold fg:nord11)";
        vimcmd_symbol  = "[](bold fg:nord10)";
        vimcmd_replace_one_symbol = "[](bold fg:nord15)";
        vimcmd_replace_symbol     = "[](bold fg:nord15)";
        vimcmd_visual_symbol      = "[](bold fg:nord12)";
      };
    };
  };
}
