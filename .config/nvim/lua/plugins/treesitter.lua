return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  opts = {
    ensure_installed = {
      "dart",
      "lua",
      "vim",
      "vimdoc", -- Altamente recomendado para las ayudas de Neovim
    },
    -- ¡ESTA LÍNEA ES INDISPENSABLE!
    highlight = {
      enable = true,
    },
  },
}
