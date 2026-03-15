-- NVIM
vim.g.mapleader = " "

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.wrap = false
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.autoindent = true

vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.termguicolors = true
vim.g.have_nerd_font = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.updatetime = 250

vim.opt.cursorline = false
vim.opt.list = true
vim.opt.scrolloff = 10
vim.opt.signcolumn = "yes"
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

vim.opt.complete = "o,.,w,b,u"
vim.opt.completeopt = "fuzzy,menu,menuone,noselect"
vim.opt.pumheight = 8
vim.opt.pummaxwidth = 80
vim.opt.shortmess:prepend("c")

vim.schedule(function()
  vim.opt.clipboard = "unnamedplus"
end)

vim.diagnostic.config({ virtual_text = true })

-- PLUGINS
vim.pack.add({
    { src = "https://github.com/blazkowolf/gruber-darker.nvim" },
    { src = "https://github.com/nvim-lua/plenary.nvim" },
    { src = "https://github.com/nvim-telescope/telescope.nvim" },
    { src = "https://github.com/mason-org/mason.nvim" },
    { src = "https://github.com/mason-org/mason-lspconfig.nvim" },
    { src = "https://github.com/neovim/nvim-lspconfig" },
    { src = "https://github.com/windwp/nvim-autopairs" },
})

vim.cmd.colorscheme("gruber-darker")

require("telescope").setup {
    defaults = { file_ignore_patterns = { "node_modules" } },
}

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ft", builtin.find_files, {})
vim.keymap.set("n", "<leader>fs", builtin.live_grep, {})

vim.keymap.set("n", "<leader>w", ":w<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>ff", ":Ex<CR>", { noremap = true, silent = true })
vim.keymap.set("i", "<C-Space>", "<C-x><C-o>", { silent = true })
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

require("mason").setup()
require("mason-lspconfig").setup()
require("nvim-autopairs").setup()
