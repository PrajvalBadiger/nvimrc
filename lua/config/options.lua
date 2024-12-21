-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local opts = {

  tabstop = 4,
  shiftwidth = 4,
  softtabstop = 4,
  expandtab = true,
  smartindent = true,

  wrap = false,

  swapfile = false,
  backup = false,
  undofile = true,
  undodir = os.getenv("HOME") .. "/.vim/undodir",

  hlsearch = false,
  incsearch = true,

  scrolloff = 8,

  cursorline = false,

  list = false,
  mouse = "a",
  autoread = true,
  --  guicursor = ""
  --  colorcolumn = "80",
}

-- Set options from table
for opt, val in pairs(opts) do
  vim.o[opt] = val
end

-- Add templ as file type
vim.filetype.add({
  extension = {
    templ = "templ",
  },
})

vim.g.lua_tree_ignore = {
  ".git",
  "node_modules",
  ".cache",
  "*.pyc",
  "*.o",
  "*.out",
}
