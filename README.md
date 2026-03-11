# Declarative Neovim Config 

## Testing your new configuration

To test your configuration simply run the following command from within the root of this repository

```
nix run . --extra-experimental-features nix-command --extra-experimental-features flakes
```

After you are happy with the resulting config, I would recommend setting the above command as an alias in your `~/.bashrc`, `~/.zshrc`or home manager config if using nixos
e.g.
```nix
shellAliases = {

    nvim = "nix run <parent-folder>/vixm/# --extra-experimental-features nix-command --extra-experimental-features flakes";
}
```

 - Run the following to install binaries related to go.nvim plugin
```vim
:GoInstallBinaries
```

- If you run into issues with the delve installation being out of date simply run the following command to update the delve version:
```bash
go install github.com/go-delve/delve/cmd/dlv@latest
```

