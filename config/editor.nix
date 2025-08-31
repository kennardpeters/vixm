let
  selectOpts = ''
    {
      behavior = cmp.SelectBehavior.Insert
    }
  '';
in
  {pkgs, ...}: {
    plugins = {
      luasnip.enable = true;
      treesitter = {
        enable = true;

        folding = false;
        settings = {
          ensure_installed = ["nix" "lua" "rust"];
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

      cmp = {
        enable = true;
        settings = {
          autoEnableSource = true;
          source = [
            {
              name = "nvim_lsp";
              keywordLength = 1;
            }
            {
              name = "buffer";
              keywordLength = 3;
            }
            {name = "luasnip";}
          ];
          snippet.expand = "function(args) require('luasnip').lsp_expand(args.body) end";
          mapping = {
            "<Up>" = "cmp.mapping.select_prev_item(${selectOpts})";
            "<Down>" = "cmp.mapping.select_next_item(${selectOpts})";

            "<C-p>" = "cmp.mapping.select_prev_item(${selectOpts})";
            "<C-n>" = "cmp.mapping.select_next_item(${selectOpts})";

            "<C-u>" = "cmp.mapping.scroll_docs(-4)";
            "<C-d>" = "cmp.mapping.scroll_docs(4)";

            "<C-e>" = "cmp.mapping.abort()";
            "<C-y>" = "cmp.mapping.confirm({select = true})";
            "<CR>" = "cmp.mapping.confirm({select = false})";

            "<C-f>" = ''
              cmp.mapping(
                function(fallback)
                  if luasnip.jumpable(1) then
                    luasnip.jump(1)
                  else
                    fallback()
                  end
                end,
                { "i", "s" }
              )
            '';

            "<C-b>" = ''
              cmp.mapping(
                function(fallback)
                  if luasnip.jumpable(-1) then
                    luasnip.jump(-1)
                  else
                    fallback()
                  end
                end,
                { "i", "s" }
              )
            '';

            "<Tab>" = ''
              cmp.mapping(
                function(fallback)
                  local col = vim.fn.col('.') - 1

                  if cmp.visible() then
                    cmp.select_next_item(select_opts)
                  elseif col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
                    fallback()
                  else
                    cmp.complete()
                  end
                end,
                { "i", "s" }
              )
            '';

            "<S-Tab>" = ''
              cmp.mapping(
                function(fallback)
                  if cmp.visible() then
                    cmp.select_prev_item(select_opts)
                  else
                    fallback()
                  end
                end,
                { "i", "s" }
              )
            '';
          };
        };
      };

      cmp-nvim-lsp.enable = true;
      cmp_luasnip.enable = true;
    };
  }
