# fan87's NeoVim Configiuration

This README may not be up-to-date

### Key features
- Not making it another VSCode
- Lightweight
- Minimal shortcut changes from Vanilla vim

### Non Vanilla Keybinds
- `<Space>p` - Find by name
- `<Space>f` - Find in files
- `<Space>nt` - Toggle NERDTree
- `<Space>e` - Toggle Harpoon Menu
- `<Space>a` - Add file to harpoon
- `<Space>1` ~ `<Space>9` - Jump to harpoon tab 1 ~ 9

- Visual Mode, `J` - Move selection line up
- Visual Mode, `K` - Move selection line down

- For Auto Complete keys, check lsp.lua
- And everything in https://github.com/ray-x/navigator.lua

### Commands
- `:lua vim.notify("Hello, World!")` - `nvim-notify`
- `:Mason` - Shows the mason menu
- `:PackerSync` - Sync packer
