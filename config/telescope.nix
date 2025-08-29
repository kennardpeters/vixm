{
  plugins = {
    telescope.enable = true;
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
  ];
}
