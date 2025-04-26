# Neovim Configuration

This is the home for my neovim configuration. This files add the required configuration for my neovim to work properly.

## Prerequisites

- Neovim
- Git
- Golang

## Neovim Installation

### Through package manager:

- MacOS: `brew install neovim`
- Arch Linux: `sudo pacman -S neovim`

### From source:

- Clone the neovim repository: `git clone https://github.com/neovim/neovim`
- Enter the neovim directory: `cd neovim`
- Compile neovim: `make CMAKE_BUILD_TYPE=Release`
- Install neovim: `sudo make install`
- Add neovim to your PATH: `sudo ln -s /usr/local/bin/nvim /usr/bin/nvim`
- Verify neovim installation: `nvim --version`

## Git Installation

- MacOS: `brew install git`
- Arch Linux: `sudo pacman -S git`

## Golang Installation

- MacOS: `brew install go`
- Arch Linux: `sudo pacman -S go`

## Neovim Configuration

1. Clone this repository to your local machine. You can do this by running the following command in your terminal:
    ```bash
    git clone https://github.com/alcb1310/nvim.git ~/.config/nvim
    ```

2. Open Neovim and `Lazy.vim` will install all the plugins for you.

3. Install the required **LSP** servers by running the following command in your terminal:

- **Lua lsp**:
   - MacOS: `brew install lua-language-server`
   - Arch Linux: `sudo pacman -S lua-language-server`

- **Biome**: `npm install -g @biomejs/biome`
- **Emmet**: `npm install -g emmet-ls`
- **Tailwind**: `npm install -g @tailwindcss/language-server`
- **TypeScript**: `npm install -g typescript typescript-language-server`
- **Gopls**: `go install golang.org/x/tools/gopls@latest`

4. Install the required **formatters** by running the following command in your terminal:

- **Gofumt**: `go install mvdan.cc/gofumpt@latest`
- **Goimports-reviser**: `go install -v github.com/incu6us/goimports-reviser/v3@latest`

5. Install the required **debuggers** by running the following command in your terminal:

- **Go Delve**: `go install github.com/go-delve/delve/cmd/dlv@latest`
