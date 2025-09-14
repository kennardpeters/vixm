{pkgs, ...}: {
  plugins = {
    avante = {
      enable = true;
      settings = {
        provider = "openai";
      };
    };
  };
  extraPlugins = with pkgs.vimPlugins; [
    {
      plugin = blink-cmp-avante;
    }
  ];
}
