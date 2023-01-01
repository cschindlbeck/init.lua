# Neovim lua config

Tested on Neovim 0.8.2

## Requirements

- Packer

    ```
    git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
    ```

- Nerdfont

    download repos, install via script, takes ages and loads of space
    https://github.com/ryanoasis/nerd-fonts#option-3-install-script

- NPM

    mason lsp needs npm
    sudo apt install npm

## Usage

Install new packages via 

Source packer.lua

```
:so
```

Install packages via Packer

```
:PackerSync
```
