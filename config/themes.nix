{pkgs, ...}: {
  colorschemes = {
    onedark = {
      enable = true;
      settings = {
        colors = {yellow = "#03f4fc";};
        style = "dark";
        transparent = true;
      };
    };
  };
  # extraPlugins = with pkgs.vimPlugins; [
  #   {
  #     plugin = lush-nvim;
  #   }

  #   #Use for hacker-man when branch is fixed
  #   (pkgs.vimUtils.buildVimPlugin {
  #     name = "shipwright";
  #     src = pkgs.fetchFromGitHub {
  #       owner = "rktjmp";
  #       repo = "shipwright.nvim";
  #       rev = "e596ab48328c31873f4f4d2e070243bf9de16ff3";
  #       sha256 = "sha256-xh/2m//Cno5gPucjOYih79wVZj3X1Di/U3/IQhKXjc0=";
  #     };
  #     meta = {description = "A flexible build system for lua";};
  #   })
  # ];
}
