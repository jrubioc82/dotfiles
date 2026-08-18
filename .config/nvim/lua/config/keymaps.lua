-- editor states
vim.keymap.set('i', 'jk', '<Esc>', { desc = 'Exit insert mode' })
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- move through windows
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- open netrw
vim.keymap.set("n", "<leader>e", vim.cmd.Explore, { desc = "Open netrw" })

-- netrw
vim.api.nvim_create_autocmd("FileType", {
  pattern = "netrw",
  callback = function()
    vim.keymap.set("n", "l", "<CR>", {
      buffer = true,
      remap = true,
      desc = "Open file or directory"
    })

    vim.keymap.set("n", "h", "-", {
      buffer = true,
      remap = true,
      desc = "Go to parent directory"
    })
  end,
})

