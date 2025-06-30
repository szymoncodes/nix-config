{ self, ... }: {
plugins.alpha = {
        enable = true;
	layout = [
		{
			type = "padding";
			val = 22;
		}
		{
			type = "text";
			val = [
			"                                                                   "
      "      ████ ██████           █████      ██                    "
      "     ███████████             █████                            "
      "     █████████ ███████████████████ ███   ███████████  "
     	"    █████████  ███    █████████████ █████ ██████████████  "
    	"   █████████ ██████████ █████████ █████ █████ ████ █████  "
  	  " ███████████ ███    ███ █████████ █████ █████ ████ █████ "
 			"██████  █████████████████████ ████ █████ █████ ████ ██████"
			];
			opts = {
				position = "center";
				# hl = "Error";
			};
		}
		{
			type = "padding";
			val = 4;
		}
		{
			type = "group";
			val.__raw = ''
				function()
            				local dashboard = require("alpha.themes.dashboard")
            				return {
              					dashboard.button("f", "  Find file", ":cd $HOME | silent Telescope find_files hidden=true no_ignore=true <CR>"),
            				}
          			end
			'';
		}
		{
			type = "padding";
			val = 1;
		}
		{
			type = "group";
			val.__raw = ''
				function()
            				local dashboard = require("alpha.themes.dashboard")
            				return {
              					dashboard.button("g", "  Find text", ":Telescope live_grep <CR>"),
            				}
          			end
			'';
		}
		{
			type = "padding";
			val = 1;
		}
		{
			type = "group";
			val.__raw = ''
				function()
            				local dashboard = require("alpha.themes.dashboard")
            				return {
              					dashboard.button("r", "󰄉  Recent files", ":Telescope oldfiles <CR>"),
            				}
          			end
			'';
		}
		{
			type = "padding";
			val = 1;
		}
		{
			type = "group";
			val.__raw = ''
				function()
            				local dashboard = require("alpha.themes.dashboard")
            				return {
              					dashboard.button("b", "󱗼  File Explorer", ":Telescope file_browser<CR>"),
            				}
          			end
			'';
		}
        ];
    };
}
