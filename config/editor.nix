{
  plugins = {
    treesitter = {
      enable = true;

      folding = false;
      settings = {
        ensure_installed = ["nix" "lua" "rust" "go"];
        # Further configuration options for nvim-treesitter
        highlight = {enable = true;};
        indent = {
          enable = true;
        };
      };
      # Example of another treesitter-related plugin
    };
    treesitter-textobjects.enable = true;

    ## For adding proper indentation
    mini = {
      enable = true;
      modules = {
        surround = {};
        indentscope = {
          symbol = "│";
          options = {try_as_border = true;};
        };
      };
    };

    # autocompletions
    blink-cmp = {
      enable = true;
      settings = {
        keymap = {
          preset = "enter";
        };
        completion = {
          documentation = {
            auto_show = false;
            auto_show_delay_ms = 500;
          };
        };
        sources = {
          default = [
            "lsp"
            "path"
            "snippets"
            "lazydev"
          ];
          providers = {
            lazydev = {
              module = "lazydev.integrations.blink";
              score_offset = 100;
            };
          };
        };

        snippets = {
          preset = "luasnip";
        };

        signature = {
          enabled = true;
        };
      };
    };

    # Snippet engine & its associated nvim-cmp source
    luasnip.enable = true;

    # TODO: add friendly-snippets
    # Adds a number of user-friendly snippets
  };
}
