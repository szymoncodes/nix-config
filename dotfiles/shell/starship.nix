{ pkgs, lib, ... }: {
    programs.starship = {
        enable = true;
	enableZshIntegration = true;
	settings = {
		format = lib.concatStrings [
			"[](nord3)"
			"$os"
			"$username"
			"[](bg:nord11 fg:nord3)"
			"$directory"
			"[](fg:nord11 bg:nord14)"
			"$git_branch"
			"$git_status"
			"[](fg:nord14 bg:nord13)"
			"$c"
			"$rust"
			"$golang"
			"$nodejs"
			"$php"
			"$java"
			"$kotlin"
			"$haskell"
			"$python"
			"[](fg:nord13 bg:nord9)"
			"[](fg:nord9 bg:nord15)"
			"$time"
			"[ ](fg:nord15)"
			"$line_break$characte"
		];
		palette = "nord";
		palettes.nord = {
			nord3 = "#4c566a";
			nord11 = "#bf616a";
			nord14 = "#a3be8c";
			nord13 = "#ebcb8b";
			nord9 = "#81a1c1";
			nord15 = "#b48ead";
			nord6 = "#eceff4";
			nord1 = "#3b4252";
			nord12 = "#d08770";
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
			style_root = "bg:nord3 fg:nord6";
			format = "[ $user ]($style)";
		};
		directory = {
			style = "fg:nord1 bg:nord11";
			format = "[ $path ]($style)";
			truncation_length = 3;
			truncation_symbol = "…/";
		};
		directory.substitutions = {
			"Documents" = "󰈙 ";
			"Downloads" = " ";
			"Music" = "󰝚 ";
			"Pictures" = " ";
			"Developer" = "󰲋 ";
		};
		git_branch = {
			symbol = "";
			style = "bg:nord13";
			format = "[[ $symbol $branch ](fg:nord1 bg:nord14)]($style)";
		};
		git_status = {
			style = "bg:nord13";
			format = "[[($all_status$ahead_behind )](fg:nord1 bg:nord14)]($style)";
		};
		nodejs = {
			symbol = "";
			style = "bg:nord13";
			format = "[[ $symbol( $version) ](fg:nord1 bg:nord13)]($style)";
		};
		c = {
			symbol = " ";
			style = "bg:nord13";
			format = "[[ $symbol( $version) ](fg:nord1 bg:nord13)]($style)";
		};
		rust = {
			symbol = "";
			style = "bg:nord13";
			format = "[[ $symbol( $version) ](fg:nord1 bg:nord13)]($style)";
		};
		golang = {
			symbol = "";
			style = "bg:nord13";
			format = "[[ $symbol( $version) ](fg:nord1 bg:nord13)]($style)";
		};
		php = {
			symbol = "";
			style = "bg:nord13";
			format = "[[ $symbol( $version) ](fg:nord1 bg:nord13)]($style)";
		};
		java = {
			symbol = " ";
			style = "bg:nord13";
			format = "[[ $symbol( $version) ](fg:nord1 bg:nord13)]($style)";
		};
		kotlin = {
			symbol = "";
			style = "bg:nord13";
			format = "[[ $symbol( $version) ](fg:nord1 bg:nord13)]($style)";
		};
		haskell = {
			symbol = "";
			style = "bg:nord13";
			format = "[[ $symbol( $version) ](fg:nord1 bg:nord13)]($style)";
		};
		python = {
			symbol = "";
			style = "bg:nord13";
			format = "[[ $symbol( $version) ](fg:nord1 bg:nord13)]($style)";
		};
		time = {
			disabled = false;
			time_format = "%R";
			style = "bg:nord11";
			format = "[[  $time ](fg:nord1 bg:nord15)]($style)";
		};
		line_break = {
			disabled = false;
		};
		character = {
			disabled = false;
			success_symbol = "[](bold fg:nord14)";
			error_symbol = "[](bold fg:nord12)";
			vimcmd_symbol = "[](bold fg:creen)";
			vimcmd_replace_one_symbol = "[](bold fg:nord15)";
			vimcmd_replace_symbol = "[](bold fg:nord15)";
			vimcmd_visual_symbol = "[](bold fg:nord15)";
		};
    };
    };
}
