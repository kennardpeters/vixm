{
  # Import all your configuration modules here
  imports = [
    ./bufferline.nix
    ./telescope.nix
  ];

  config = {
    globals.mapleader = " ";
    keymaps = [
      {
        mode = "n";
        key = "<leader>1";
        action = "<CMD>wincmd w<CR>";
        options.desc = "[1]oggle Windows";
      }
      {
        mode = "n";
        key = "<leader>q";
        action = "<CMD>wincmd q<CR>";
        options.desc = "[Q]uit window";
      }
      {
        mode = "n";
        key = "<leader>v";
        action = "<CMD>vsplit<CR>";
        options.desc = "Split Window [V]ertically";
      }
    ];
  };
}
