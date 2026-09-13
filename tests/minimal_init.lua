vim.notify = print
vim.opt.swapfile = false
vim.opt.rtp:append(".")

vim.pack.add({
  "https://github.com/nvim-lua/plenary.nvim",
  "https://github.com/nvim-neotest/nvim-nio",
  "https://github.com/nvim-neotest/neotest",
  "https://github.com/mfussenegger/nvim-dap",
  { src = "https://github.com/nvim-treesitter/nvim-treesitter", version = "main" },
}, { load = true, confirm = false })

local ok = vim.treesitter.language.add("cpp")
if not ok then
  require("nvim-treesitter").install({ "cpp" }):wait()
  vim.o.rtp = vim.o.rtp
  assert(vim.treesitter.language.add("cpp"))
end
