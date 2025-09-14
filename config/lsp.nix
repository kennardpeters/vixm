{
  plugins = {
    lsp = {
      enable = true;
      inlayHints = true;
      keymaps = {
        diagnostic = {
          "<leader>e" = "open_float";
          "[d" = "goto_prev";
          "]d" = "goto_next";
          "<leader>do" = "setloclist";
        };
        lspBuf = {
          "K" = "hover";
          "gD" = "declaration";
          "gd" = "definition";
          "gR" = "references"; # Might want to change this to telescope references instead
          "gI" = "implementation";
          "gy" = "type_definition";
          "<leader>ca" = "code_action";
          "<leader>rn" = "rename";
          "<leader>wl" = "list_workspace_folders";
          "<leader>wr" = "remove_workspace_folder";
          "<leader>wa" = "add_workspace_folder";
        };
      };
      servers = {
        nixd.enable = true;
        nil_ls.enable = true;
        gopls.enable = true;
        lua_ls.enable = true;
      };
    };
    fidget.enable = true;
    lazydev.enable = true;
  };
}
