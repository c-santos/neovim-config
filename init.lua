vim.cmd("set relativenumber")
vim.cmd("set clipboard+=unnamedplus")
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")

vim.cmd.colorscheme("habamax")
vim.cmd([[
	highlight Normal guibg=none
	highlight NonText guibg=none
	highlight Normal ctermbg=none
	highlight NonText ctermbg=none
]])

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

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

local plugins = {
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" }
}

local opts = {}

require('lazy').setup(plugins, opts)

local builtin = require("telescope.builtin")

vim.keymap.set("n", "<C-p>", builtin.find_files, {})
vim.keymap.set("n", "<leader>f", builtin.live_grep, {})

require 'nvim-treesitter.install'.prefer_git = false

local config = require("nvim-treesitter.configs")

config.setup({
    ensure_installed = { "lua", "javascript", "typescript", "python", "html", "css", "tsx", "jsx", "typescript" },
    highlight = { enable = true },
    indent = { enable = true },
})
