{
  plugins = {
    which-key = {
      enable = true;
    
      settings = {
        spec = [
          # Settings groups
          {
            __unkeyed-1 = "<leader>g";
            group = "[G]it";
          }
          {
            __unkeyed-1 = "<leader>q";
            group = "[Q]uit / Close Window";
          }
          {
            __unkeyed-1 = "<leader>d";
            group = "Debug";
            icon = "";
          }
          {
            __unkeyed-1 = "<leader>c";
            group = "Code Actions";
            icon = "";
          }
          {
            __unkeyed-1 = "<leader>s";
            group = "Search";
            icon = "";
          }
          # TODO:
          #{
          #  __unkeyed-1 = "<leader>a";
          #  group = "Avante";
          #  icon = "󰬈";
          #}
          
          # Keys with custom icons / labels
          ### General
          {
            __unkeyed-1 = "<leader>e";
            icon = "󰙅";
            desc = "Display Diagnostic Message ([E]rror)";
          }
          ### Search
          {
            __unkeyed-1 = "<leader>sg";
            icon = "";
            desc = "Live Grep";
          }
          ### Debug
          {
            __unkeyed-1 = "<leader>db";
            icon = "";
            desc = "Toggle Breakpoint";
          }
          {
            __unkeyed-1 = "<leader>dc";
            icon = "";
            desc = "Dap Continue";
          }
          {
            __unkeyed-1 = "<leader>z";
            icon = "󰆹";
            desc = "Step into";
          }
          #{
          #  __unkeyed-1 = "<leader>dj";
          #  icon = "";
          #  desc = "Down";
          #}
          #{
          #  __unkeyed-1 = "<leader>dk";
          #  icon = "";
          #  desc = "Up";
          #}
          {
            __unkeyed-1 = "<leader>dl";
            icon = "";
            desc = "Run Last";
          }
          #{
          #  __unkeyed-1 = "<leader>do";
          #  icon = "";
          #  desc = "Step Out";
          #}
          {
            __unkeyed-1 = "<leader>x";
            icon = "";
            desc = "Dap Step Over";
          }
          {
            __unkeyed-1 = "<leader>dp";
            icon = "";
            desc = "Dap Pause";
          }
          {
            __unkeyed-1 = "<leader>dt";
            icon = "";
            desc = "Dap UI Toggle";
          }
          {
            __unkeyed-1 = "<leader>ca";
            icon = "󱐋";
            desc = "Code Actions";
          }
          {
            __unkeyed-1 = "<leader>rn";
            icon = "󰑕";
            desc = "Rename";
          }
          #{
          #  __unkeyed-1 = "<leader>wa";
          #  icon = "󱑾";
          #  desc = "Add Workspace Folder";
          #}
          #{
          #  __unkeyed-1 = "<leader>wr";
          #  icon = "";
          #  desc = "Remove Workspace Folder";
          #}
          #{
          #  __unkeyed-1 = "<leader>wr";
          #  icon = "󰉓";
          #  desc = "List Workspace Folders";
          #}
          
        ];
      };
    };
  };
}
