{ pkgs, lib, ... }: {
    programs.starship = {
        enable = true;
	enableZshIntegration = true;
	settings = {
		format = lib.concatStrings [
			"[](muted)"
			"$os"
			"$username"
			"[](bg:love fg:muted)"
			"$directory"
			"[](fg:love bg:foam)"
			"$git_branch"
			"$git_status"
			"[](fg:foam bg:gold)"
			"$c"
			"$rust"
			"$golang"
			"$nodejs"
			"$php"
			"$java"
			"$kotlin"
			"$haskell"
			"$python"
			"[](fg:gold bg:pine)"
			"$docker_context"
			"[](fg:pine bg:rose)"
			"$time"
			"[ ](fg:rose)"
			"$line_break$characte"
		];
		palette = "rose-pine";
		palettes.rose-pine = {
			muted= "#6e6a86";
			love = "#eb6f92";
			foam = "#9ccfd8";
			gold = "#f6c177";
			pine = "#31748f";
			rose = "#ebbcba";
			text = "#e0def4";
			overlay = "#26233a";
			red = "#f38ba8";
		};
		os = {
			disabled = false;
			style = "bg:muted fg:text";
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
			Alpine = "";
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
			style_user = "bg:muted fg:text";
			style_root = "bg:muted fg:text";
			format = "[ $user ]($style)";
		};
		directory = {
			style = "fg:overlay bg:love";
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
			style = "bg:gold";
			format = "[[ $symbol $branch ](fg:overlay bg:foam)]($style)";
		};
		git_status = {
			style = "bg:gold";
			format = "[[($all_status$ahead_behind )](fg:overlay bg:foam)]($style)";
		};
		nodejs = {
			symbol = "";
			style = "bg:gold";
			format = "[[ $symbol( $version) ](fg:overlay bg:gold)]($style)";
		};
		c = {
			symbol = " ";
			style = "bg:gold";
			format = "[[ $symbol( $version) ](fg:overlay bg:gold)]($style)";
		};
		rust = {
			symbol = "";
			style = "bg:gold";
			format = "[[ $symbol( $version) ](fg:overlay bg:gold)]($style)";
		};
		golang = {
			symbol = "";
			style = "bg:gold";
			format = "[[ $symbol( $version) ](fg:overlay bg:gold)]($style)";
		};
		php = {
			symbol = "";
			style = "bg:gold";
			format = "[[ $symbol( $version) ](fg:overlay bg:gold)]($style)";
		};
		java = {
			symbol = " ";
			style = "bg:gold";
			format = "[[ $symbol( $version) ](fg:overlay bg:gold)]($style)";
		};
		kotlin = {
			symbol = "";
			style = "bg:gold";
			format = "[[ $symbol( $version) ](fg:overlay bg:gold)]($style)";
		};
		haskell = {
			symbol = "";
			style = "bg:gold";
			format = "[[ $symbol( $version) ](fg:overlay bg:gold)]($style)";
		};
		python = {
			symbol = "";
			style = "bg:gold";
			format = "[[ $symbol( $version) ](fg:overlay bg:gold)]($style)";
		};
		docker_context = {
			symbol = "";
			style = "bg:overlay";
			format = "[[ $symbol( $context) ](fg:#83a598 bg:color_bg3)]($style)";
		};
		time = {
			disabled = false;
			time_format = "%R";
			style = "bg:love";
			format = "[[  $time ](fg:overlay bg:rose)]($style)";
		};
		line_break = {
			disabled = false;
		};
		character = {
			disabled = false;
			success_symbol = "[](bold fg:foam)";
			error_symbol = "[](bold fg:red)";
			vimcmd_symbol = "[](bold fg:creen)";
			vimcmd_replace_one_symbol = "[](bold fg:rose)";
			vimcmd_replace_symbol = "[](bold fg:rose)";
			vimcmd_visual_symbol = "[](bold fg:rose)";
		};
    };
    };
}
