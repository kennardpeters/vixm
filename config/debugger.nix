{
  plugins = {
    dap-ui = {
      enable = true;
      settings.floating.mappings = {close = ["<ESC>" "q"];};
    };
    dap = {
      enable = true;
      extensions = {};
      signs = {
        dapBreakpoint = {
          text = "";
          texthl = "DapBreakpoint";
        };
        dapBreakpointCondition = {
          text = "";
          texthl = "DapBreakpointCondition";
        };
        dapLogPoint = {
          text = "";
          texthl = "DapLogPoint";
        };
      };
    };
    dap-go.enable = true;
    dap-virtual-text.enable = true;
  };

  keymaps = [
    #vim.api.nvim_set_keymap('n', '<leader>db', ":DapToggleBreakpoint<CR>", { noremap = true })
    {
      mode = "n";
      key = "<leader>db";
      action = ":DapToggleBreakpoint<CR>";
      options = {
        silent = true;
        desc = "Toggle Breakpoint";
        noremap = true;
      };
    }
    #vim.api.nvim_set_keymap('n', '<leader>dt', ":DapUiToggle<CR>", { noremap = true })
    {
      mode = "n";
      key = "<leader>dt";
      action = ":DapUiToggle<CR>";
      options = {
        silent = true;
        desc = "Dap UI Toggle";
        noremap = true;
      };
    }
    #vim.api.nvim_set_keymap('n', '<leader>z', ":DapStepInto<CR>", { noremap = true })
    {
      mode = "n";
      key = "<leader>z";
      action = ":DapStepInto<CR>";
      options = {
        silent = true;
        desc = "Dap Step Into";
        noremap = true;
      };
    }
    #vim.api.nvim_set_keymap('n', '<leader>x', ":DapStepOver<CR>", { noremap = true })
    {
      mode = "n";
      key = "<leader>x";
      action = ":DapStepOver<CR>";
      options = {
        silent = true;
        desc = "Dap Step Over";
        noremap = true;
      };
    }
    #vim.api.nvim_set_keymap('n', '<leader>dc', ":DapContinue<CR>", { noremap = true })
    {
      mode = "n";
      key = "<leader>dc";
      action = ":DapContinue<CR>";
      options = {
        silent = true;
        desc = "Dap Continue";
        noremap = true;
      };
    }
    #vim.api.nvim_set_keymap('n', '<leader>dr', ":lua require('dapui').open({reset = true})<CR>", { noremap = true })
    {
      mode = "n";
      key = "<leader>dr";
      action = ":DapRerun<CR>";
      options = {
        silent = true;
        desc = "Dap Rerun";
        noremap = true;
      };
    }
    #vim.api.nvim_set_keymap('n', '<leader>dp', ":lua require('dap').pause()<CR>", { noremap = true })
    {
      mode = "n";
      key = "<leader>dp";
      action = ":lua require('dap').pause()<CR>";
      options = {
        silent = true;
        desc = "Dap Pause";
        noremap = true;
      };
    }
    #vim.api.nvim_set_keymap('n', '<leader>det', ":lua require('dap-go').debug_test() --check-go-version=false<CR>", { noremap = true })
    {
      mode = "n";
      key = "<leader>det";
      action = ":lua require('dap-go').debug_test() --check-go-version=false<CR>";
      options = {
        silent = true;
        desc = "Dap Debug (Go) Test";
        noremap = true;
      };
    }
    #vim.api.nvim_set_keymap('n', '<leader>dlt', ":lua require('dap-go').debug_last_test()<CR>", { noremap = true })
    {
      mode = "n";
      key = "<leader>dlt";
      action = ":lua require('dap-go').debug_last_test()<CR>";
      options = {
        silent = true;
        desc = "Dap Debug Last (Go) Test";
        noremap = true;
      };
    }
    {
      mode = "n";
      key = "<leader>ds";
      action = ":DapStop<CR>";
      options = {
        silent = true;
        desc = "Dap Stop Debugging";
        noremap = true;
      };
    }
  ];
  extraConfigLua = ''
    require("dapui").setup()
    require("dap-go").setup()
  '';
  extraPlugins = [];
}
