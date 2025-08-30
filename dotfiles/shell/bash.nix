{ self, pkgs, ... }: {
  programs.bash = {
    enable = true;
    enableCompletion = true;
    initExtra = ''
       # Load blesh if installed
      if [ -f "${pkgs.blesh}/share/blesh/ble.sh" ]; then
        source "${pkgs.blesh}/share/blesh/ble.sh"

        # Define blesh prompt hook (must echo, not assign!)
        function ble/prompt/ps1 {
          starship prompt --status=$? --keymap=$BLE_KEYMAP --jobs=$BLE_JOBCOUNT
        }
      else
        # fallback: plain starship
        eval "$(starship init bash)"
      fi
    '';
  };
  home.file.".blerc".text = ''
    ble-face -s region                    bg=gray,fg=white
    ble-face -s region_target             bg=gray,fg=black
    ble-face -s region_match              bg=lightgray,fg=white
    ble-face -s region_insert             fg=blue,bg=lightgray
    ble-face -s disabled                  fg=gray
    ble-face -s overwrite_mode            fg=black,bg=lightblue
    ble-face -s vbell                     reverse
    ble-face -s vbell_erase               bg=lightgray
    ble-face -s vbell_flash               fg=green,reverse
    ble-face -s prompt_status_line        fg=white,bg=black
    
    ble-face -s syntax_default            none
    ble-face -s syntax_command            fg=green
    ble-face -s syntax_quoted             fg=yellow
    ble-face -s syntax_quotation          fg=yellow,bold
    ble-face -s syntax_escape             fg=magenta
    ble-face -s syntax_expr               fg=cyan
    ble-face -s syntax_error              fg=red  
    ble-face -s syntax_varname            fg=blue
    ble-face -s syntax_delimiter          bold
    ble-face -s syntax_param_expansion    fg=cyan
    ble-face -s syntax_history_expansion  fg=cyan
    ble-face -s syntax_function_name      fg=green,bold
    ble-face -s syntax_comment            fg=gray
    ble-face -s syntax_glob               fg=magenta,bold
    ble-face -s syntax_brace              fg=cyan,bold
    ble-face -s syntax_tilde              fg=blue,bold
    ble-face -s syntax_document           fg=blue
    ble-face -s syntax_document_begin     fg=blue,bold
    
    ble-face -s command_builtin_dot       fg=green,bold
    ble-face -s command_builtin           fg=green
    ble-face -s command_alias             fg=cyan
    ble-face -s command_function          fg=green
    ble-face -s command_file              fg=green
    ble-face -s command_keyword           fg=blue
    ble-face -s command_jobs              fg=green
    ble-face -s command_directory         fg=white
    
    ble-face -s filename_directory        fg=white
    ble-face -s filename_directory_sticky fg=white
    ble-face -s filename_link             fg=white
    ble-face -s filename_orphan           fg=white
    ble-face -s filename_executable       fg=white
    ble-face -s filename_setuid           fg=white
    ble-face -s filename_setgid           fg=white
    ble-face -s filename_other            fg=white
    ble-face -s filename_socket           fg=white
    ble-face -s filename_pipe             fg=white
    ble-face -s filename_character        fg=white
    ble-face -s filename_block            fg=white
    ble-face -s filename_warning          fg=white
    ble-face -s filename_url              fg=white
    
    ble-face -s varname_array             fg=blue,bold
    ble-face -s varname_empty             fg=gray
    ble-face -s varname_export            fg=green,bold
    ble-face -s varname_expr              fg=cyan,bold
    ble-face -s varname_hash              fg=green,bold
    ble-face -s varname_number            fg=cyan
    ble-face -s varname_readonly          fg=gray
    ble-face -s varname_transform         fg=cyan,bold
    ble-face -s varname_unset             fg=gray
    ble-face -s argument_option           fg=cyan
    ble-face -s argument_error            fg=red  
    
    ble-face -s auto_complete             fg=black,bg=lightgray
  '';
}
