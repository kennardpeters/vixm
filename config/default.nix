{inputs, ...}: let
  pkgs = inputs.nixpkgs.legacyPackages.x86_64-linux;
in {
  # Import all your configuration modules here
  imports = [
    ./bufferline.nix
    ./telescope.nix
    ./transparent.nix
    ./themes.nix
    ./git.nix
    ./editor.nix
  ];

  ## TODO: what is needed next?
  config = {
    globals.mapleader = " ";

    opts = {
      number = true;
      clipboard = "unnamedplus";
      # ignore case when searching
      ignorecase = true;
    };

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

    extraPackages = with pkgs; [
      gcc
    ];
  };
}
