{pkgs, ...}: {
  plugins = {
    avante = {
      enable = true;
    };
  };
  extraPlugins = with pkgs.vimPlugins; [
    {
      plugin = blink-cmp-avante;
    }
  ];
}
