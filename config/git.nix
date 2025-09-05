{
  plugins = {
    ## TODO: Find better highlighting options for this
    lazygit.enable = true;
    fugitive.enable = true;
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
  ];
}
