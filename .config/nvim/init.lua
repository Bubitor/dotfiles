-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

--
require("lspconfig").kotlin_language_server.setup({})
require("notify").setup({
  background_colour = "#000000",
})
require("neo-tree").setup({
  filesystem = {
    find_by_full_path_words = false,
  },
})

require("toggleterm").setup({})

opts = {
  timeout = 3000,
  max_height = function()
    return math.floor(vim.o.lines * 0.75)
  end,
  max_width = function()
    return math.floor(vim.o.columns * 0.75)
  end,
}
