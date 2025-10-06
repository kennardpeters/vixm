{
  inputs,
  system,
  ...
}: let
  pkgs = inputs.nixpkgs.legacyPackages.${system};
in {
  # Import all your configuration modules here
  imports = [
    ./bufferline.nix
    ./telescope.nix
    ./transparent.nix
    ./themes.nix
    ./git.nix
    ./editor.nix
    ./lsp.nix
    ./gonvim.nix
    ./debugger.nix
    ./which-key.nix
    ./avante.nix
  ];

  # TODO: what is needed next?
  ## rust debugging
  ## avante
  ## copilot
  # Advanced
  ## Autocmd for specific languages (Go tests vs Rust tests...)
  ## Hacker-man theme
  ## elixir-purple theme
  config = {
    globals.mapleader = " ";

    opts = {
      number = true;
      clipboard = "unnamedplus";
      # ignore case when searching
      ignorecase = true;
      hlsearch = false;
      breakindent = true;
      undofile = true;
      smartindent = true;
      termguicolors = true;

      completeopt = "menuone,noselect";

      expandtab = true;
      shiftround = true;
      shiftwidth = 2;
      tabstop = 2;
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
      {
        mode = "n";
        key = "<leader>h";
        action = "<CMD>wincmd s<CR>";
        options.desc = "Split Window [H]orizontally";
      }
    ];

    extraPackages = with pkgs; [
      gcc
      fzy
    ];
  };
}
