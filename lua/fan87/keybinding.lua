local telescope = require('telescope.builtin')

-- set leader key
vim.keymap.set('n', ' ', '<Nop>', { silent = true, remap = true })
vim.g.mapleader = " "

-- Toggle nerd tree using <Space>nt
vim.keymap.set('n', '<Space>nt', function() vim.api.nvim_command('NERDTreeToggle') end)
-- Fuzzy find using <Space>p
vim.keymap.set('n', '<leader>p', telescope.find_files, {}) 


-- Harpoon Configuration
vim.keymap.set("n", "<leader>a", function() require("harpoon.mark").add_file() end)
vim.keymap.set("n", "<leader>e", function() require("harpoon.ui").toggle_quick_menu() end)

vim.keymap.set("n", "<leader>1", function() require("harpoon.ui").nav_file(1) end)
vim.keymap.set("n", "<leader>2", function() require("harpoon.ui").nav_file(2) end)
vim.keymap.set("n", "<leader>3", function() require("harpoon.ui").nav_file(3) end)
vim.keymap.set("n", "<leader>4", function() require("harpoon.ui").nav_file(4) end)
vim.keymap.set("n", "<leader>5", function() require("harpoon.ui").nav_file(5) end)
vim.keymap.set("n", "<leader>6", function() require("harpoon.ui").nav_file(6) end)
vim.keymap.set("n", "<leader>7", function() require("harpoon.ui").nav_file(7) end)
vim.keymap.set("n", "<leader>8", function() require("harpoon.ui").nav_file(8) end)
vim.keymap.set("n", "<leader>9", function() require("harpoon.ui").nav_file(9) end)


-- In visual mode, you can move lines up and down using J and K (uppercase)
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
