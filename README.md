# Neovim lua config

Neovim config that has the following features:
- LSP support incl. auto-completion, linting, formatting
- Terminal integration
- Directory tree
- Fuzzy file search
- Git integration

Tested on Neovim 0.8.2

## Requirements

- Telescope livegrep needs rg

- Nerdfont for nice icons

    Download [nerd-fonts repo](https://github.com/ryanoasis/nerd-fonts#option-3-install-script), install via install.sh script, takes ages and loads of space

- NPM

    Mason installs some packages via NPM
    ```
    sudo apt install npm
    ```

## Install

First, open nvim and then close it, the second time install packages via PackerSync

```
:PackerSync
```

Currently, treesitter is complaining but doing it a second time works


## Command line install

```
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
```

Does not work at the moment
