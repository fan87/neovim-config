require("harpoon").setup({
    tabline = true,
    global_settings = {
        tabline = true
    }
})

require("telescope").load_extension('harpoon')

vim.cmd('highlight! HarpoonInactive guibg=#29292E guifg=#63698c')
vim.cmd('highlight! HarpoonActive guibg=#39393F guifg=white')
vim.cmd('highlight! HarpoonNumberInactive guibg=#29292E guifg=#7aa2f7')
vim.cmd('highlight! HarpoonNumberActive guibg=#39393F guifg=#7aa2f7')
vim.cmd('highlight! TabLineFill guibg=#1F1F23 guifg=white')
