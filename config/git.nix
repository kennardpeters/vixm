{
  plugins = {
    ## TODO: Find better highlighting options for this
    lazygit.enable = true;
    fugitive.enable = true;
    gitsigns = {
      enable = true;
      settings = {
        # Commented out since fugitive is better imo
        # current_line_blame = true;
        # current_line_blame_opts = {
        #   virt_text = true;
        #   virt_text_pos = "eol";
        # };
        signcolumn = true;
        signs = {
          add = {text = "+";};
          change = {text = "~";};
          changedelete = {text = "~";};
          delete = {text = "_";};
          topdelete = {text = "‾";};
          untracked = {text = "┆";};
        };
        watch_gitdir = {follow_files = true;};
      };
    };
  };

  keymaps = [
    {
      action = "<CMD>LazyGit<CR>";
      key = "<leader>l";
      mode = "n";
      options = {
        desc = "[L]azygit";
      };
    }
    {
      action = "<CMD>Git blame<CR>";
      key = "<leader>gb";
      mode = "n";
      options = {
        desc = "[G]it [B]lame";
      };
    }
  ];
}
