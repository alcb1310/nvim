# Neovim configuration

This is my current neovim configuration using the `vim.pack` package manager

## Prerequisits

![Git](https://img.shields.io/badge/git-%23F05033.svg?style=for-the-badge&logo=git&logoColor=white)
![Neovim](https://img.shields.io/badge/NeoVim-%2357A143.svg?&style=for-the-badge&logo=neovim&logoColor=white)
![Go](https://img.shields.io/badge/go-%2300ADD8.svg?style=for-the-badge&logo=go&logoColor=white)

## Neovim Installation

For this configuration to work, you will need to be using **NeoVim version 12** or above

### Installing using a package manager

To install *Neovim* using a package manager in *Arch Linux* just run:

```bash
sudo pacman -S neovim
```

If you are using another distro, or another operating system, there will probably will be a package for *NeoVim*

### Installing from source

This will install the latest version of *NeoVim*, just run the following commands:

```bash
git clone https://github.com/neovim/neovim
cd neovim
make CMAKE_BUILD_TYPE=Release
sudo make install
```

To verify *NeoVim* was installed properly:

```bash
nvim --version
```

If there is an error, make sure you've got *NeoVim* in your PATH, usually it will be installed at `/usr/local/bin/nvim`

## Installing this configuration

Just clone this repository to your local machine

```bash
git clone https://github.com/alcb1310/nvim ~/.config/nvmi
```

The location is important since is where *NeoVim* will look for the configuration files

## LSP server Installation

![Lua](https://img.shields.io/badge/lua-%232C2D72.svg?style=for-the-badge&logo=lua&logoColor=white)
![Go](https://img.shields.io/badge/go-%2300ADD8.svg?style=for-the-badge&logo=go&logoColor=white)

This configuration requires the following **LSP** servers running 

- **Lua LSP**
```bash
sudo pacman -S lua-language-server
```

-- **Gopls**
```bash
go install golang.org/x/tools/gopls@latest
```

## Formatters

- **Gofumpt**
```bash
go install mvdan.cc/gofumpt@latest
```

- **Goimports-reviser**
```bash
go install -v github.com/incu6us/goimports-reviser/v3@latest
```

## Debuggers

- **Go Delve**
```bash
go install github.com/go-delve/delve/cmd/dlv@latest
```
