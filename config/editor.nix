{
  plugins = {
    luasnip.enable = true;
    treesitter = {
	enable = true;

      	folding = false;
      	settings = {
		ensure_installed = [ "nix" "lua" "rust" ];
          	# Further configuration options for nvim-treesitter
          	highlight = { enable = true; };
          	indent = { enable = true; };
        };
      	# Example of another treesitter-related plugin
	};
	treesitter-textobjects.enable = true;
  };
}
