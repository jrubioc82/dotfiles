return {
  'nvim-flutter/flutter-tools.nvim',
  lazy = false,
  dependencies = {
    'nvim-lua/plenary.nvim',
    'stevearc/dressing.nvim',
  },
  config = function()
    require('flutter-tools').setup({})

    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    require("flutter-tools").setup({
      lsp = {
        capabilities = capabilities,
      },
    })

    -- show hover
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = 'lsp hover' })

    -- jump to definition
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = 'go to definition' })

    -- code actions
    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { desc = 'code action' })
    vim.keymap.set('x', '<leader>ca', vim.lsp.buf.code_action, { desc = 'code action' })

    -- diagnostic
    vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, { desc = 'show diagnostic' })
    vim.keymap.set('n', '<leader>ld', vim.diagnostic.open_float, { desc = 'LSP diagnostic' })

    -- rename variable
    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})

    -- format file
    vim.keymap.set("n", "<leader>f", function()
      vim.lsp.buf.format({ async = true })
    end, { desc = "Format file" })
  end,
}
