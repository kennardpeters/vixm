{
  plugins = {
    telescope.enable = true;
    todo-comments = {
      enable = true;
      keymaps = {
        todoTelescope = {
          key = "<leader>st";
          keywords = ["TODO"];
        };
      };
    };
  };

  keymaps = [
    {
      action = "<CMD>Telescope oldfiles<CR>";
      key = "<leader>?";
      mode = "n";
      options = {
        desc = "[?] Find recently opened files";
      };
    }

    {
      action = "<CMD>Telescope find_files<CR>";
      key = "<leader>sf";
      mode = "n";
      options = {
        desc = "[S]earch [F]iles";
      };
    }

    {
      action = "<CMD>Telescope live_grep<CR>";
      key = "<leader>sg";
      mode = "n";
      options = {
        desc = "[S]earch by [G]rep";
      };
    }

    {
      action = "<CMD>Telescope resume<CR>";
      key = "<leader>sr";
      mode = "n";
      options = {
        desc = "[S]earch [R]esume";
      };
    }

    {
      mode = "n";
      key = "<leader>sd";
      action = "<CMD>Telescope diagnostics<CR>";
      options.desc = "[S]earch [D]iagnostics";
    }
    {
      mode = "n";
      key = "<leader>gr";
      action = "<CMD>Telescope lsp_references<CR>";
      options.desc = "[G]oto [R]eferences";
    }
    {
      mode = "n";
      key = "<leader>gi";
      action = "<CMD>Telescope lsp_implementations<CR>";
      options.desc = "[G]oto [I]mplementation";
    }
  ];
}
