# Neovim lua config

Neovim config that has the following features:
- LSP support incl. auto-completion, linting, formatting
- Terminal integration
- Directory tree
- Fuzzy file search
- Git integration

Tested on Neovim 0.8.2

## Requirements

- Packer
    Install package manager

    ```
    git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
    ```

- Nerdfont for nice icons

    Download [nerd-fonts repo](https://github.com/ryanoasis/nerd-fonts#option-3-install-script), install via install.sh script, takes ages and loads of space

- NPM

    Mason installs some packages via NPM
    ```
    sudo apt install npm
    ```

## Usage

Install new packages by sourcing packer.lua via

```
:so
```

Then install packages via PackerSync

```
:PackerSync
```
