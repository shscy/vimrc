-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- leader key 为空

-- leader key 为空
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local opt = {
  noremap = true,
  silent = true,
}

-- 本地变量
local map = vim.api.nvim_set_keymap

map("i", "jj", "<ESC>", opt)
map("n", "<C-h>", "<C-w>h", opt)
map("n", "<C-j>", "<C-w>j", opt)
map("n", "<C-k>", "<C-w>k", opt)
map("n", "<C-l>", "<C-w>l", opt)

map("n", "<C-Left>", ":vertical resize -2<CR>", opt)
map("n", "<C-Right>", ":vertical resize +2<CR>", opt)
map("n", "s,", ":vertical resize -10<CR>", opt)
map("n", "s.", ":vertical resize +10<CR>", opt)
-- 上下比例
map("n", "sj", ":resize +10<CR>", opt)
map("n", "sk", ":resize -10<CR>", opt)
map("n", "<C-Down>", ":resize +2<CR>", opt)
map("n", "<C-Up>", ":resize -2<CR>", opt)
-- 相等比例
map("n", "s=", "<C-w>=", opt)

-- Terminal相关
map("n", "st", ":sp | terminal<CR>", opt)
map("n", "stv", ":vsp | terminal<CR>", opt)

map("n", "<leader>m", ":NvimTreeToggle<CR>", opt)

-- telescope
map("n", "<leader>fs", ":Telescope find_files<CR>", {})
map("n", "<leader>fg", ":Telescope live_grep<CR>",{})
map("n", "<leader>fb", ":Telescope buffers<CR>", {})

-- bufferline 
map("n", "gp", "<cmd>BufferLineCyclePrev<CR>", { silent = true })
map("n", "gn", "<cmd>BufferLineCycleNext<CR>", { silent = true })
map("n", "g<Tab>", "<cmd>BufferLineSortByMRU<CR>", { silent = true })
map("n", "g<C-b>", "<cmd>BufferLineCloseLeft<CR>", { silent = true })
map("n", "g<C-t>", "<cmd>BufferLineCloseRight<CR>", { silent = true })
map("n", "g<Space>", "<cmd>BufferLinePick<CR>", { silent = true })
map("n", "g<C-Space>", "<cmd>BufferLinePickClose<CR>", { silent = true })
local plginKeys = {}

return pluginKeys
