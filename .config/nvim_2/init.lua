vim.cmd("set tabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set rnu")

vim.keymap.set("n", "<C-s>", ":wa<CR>")
vim.keymap.set("n", "<space>gb", ":Ex<CR>")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)
local opts = {}

require("lazy").setup("plugins")
