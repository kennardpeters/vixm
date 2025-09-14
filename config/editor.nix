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
    };
    # Example of another treesitter-related plugin
    treesitter-textobjects.enable = true;
    # Plugin to enable freezing of function headers
    treesitter-context.enable = true;

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
            "avante"
          ];
          providers = {
            lazydev = {
              module = "lazydev.integrations.blink";
              score_offset = 100;
            };
            avante = {
              module = "blink-cmp-avante";
              name = "Avante";
              opts = {};
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
   
    # Adds markdown rendering to nvim 
    render-markdown.enable = true;
  };
  # highlight on yank
  extraConfigLua = ''
    local highlight_group = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
    vim.api.nvim_create_autocmd("TextYankPost", {
      callback = function()
        vim.highlight.on_yank()
      end,
      group = highlight_group,
      pattern = "*",
    })
  '';
}
