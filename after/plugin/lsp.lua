local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

require('lspconfig').jsonls.setup {
  settings = {
    json = {
      schemas = require('schemastore').json.schemas(),
      validate = { enable = true },
    },
  },
}


vim.filetype.add({
    filename = {
        ["build.fandiful.ts"] = "fandibuild",
    }
})
vim.treesitter.language.register("typescript", "fandibuild")
require("lspconfig.configs").fandibuild = require("fandibuild")
require("lspconfig").fandibuild.setup {}
require("lspconfig").denols.setup {
    settings = {
        deno = {
            lint = true,
            unstable = true,
        }
    }
}

require("neodev").setup()
cmp.setup()


require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {},
})


cmp.setup({
  mapping = cmp.mapping.preset.insert({
    -- `Enter` key to confirm completion
    ['<CR>'] = cmp.mapping.confirm({select = true}),
    ['<tab>'] = cmp.mapping.confirm({select = true}),

    -- Ctrl+Space to trigger completion menu
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<esc>'] = cmp.mapping.abort(),

    -- Navigate between snippet placeholder
    ['<C-f>'] = cmp_action.luasnip_jump_forward(),
    ['<C-b>'] = cmp_action.luasnip_jump_backward(),

    -- Scroll up and down in the completion documentation
    ['<C-u>'] = cmp.mapping.scroll_docs(-4),
    ['<C-d>'] = cmp.mapping.scroll_docs(4),
  })
})

require('lsp-notify').setup({
    notify = require('notify'),
})


