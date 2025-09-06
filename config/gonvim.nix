{pkgs, ...}: {
  extraPlugins = with pkgs.vimPlugins; [
    {
      plugin = go-nvim;
      config = ''lua require("go").setup()'';
    }
  ];
  extraConfigLua = ''
      local format_sync_grp = vim.api.nvim_create_augroup("GoFormat", {})
      vim.api.nvim_create_autocmd("BufWritePre", {
        pattern = "*.go",
        callback = function()
          require('go.format').goimports()
        end,
        group = format_sync_grp,
      })
  '';
  keymaps = [
    # Go run test
    # vim.api.nvim_set_keymap('n', '<leader>rt', ":GoTestFunc<CR>", { noremap = true })
    {
      mode = "n";
      key = "<leader>rt";
      action = ":GoTestFunc<CR>";
      options = {
        silent = true;
        desc = "Run Go Test";
        noremap = true;
      };
    }
    # -- run test w/ detail
    # vim.api.nvim_set_keymap('n', '<leader>rd', ":GoTestFunc -v<CR>", { noremap = true })
    {
      mode = "n";
      key = "<leader>rd";
      action = ":GoTestFunc -v<CR>";
      options = {
        silent = true;
        desc = "Run Go Test w/ Detail";
        noremap = true;
      };
    }
    # -- clean test cache
    # vim.api.nvim_set_keymap('n', '<leader>ct', ":!go clean -testcache<CR>", { noremap = true })
    {
      mode = "n";
      key = "<leader>ct";
      action = ":!go clean -testcache<CR>";
      options = {
        silent = true;
        desc = "Clean Go test cache";
        noremap = true;
      };
    }
  ];
}
