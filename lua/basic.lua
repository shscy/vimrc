vim.g.encoding = "UTF-8"
vim.o.fileencoding = 'utf-8'
-- 使用相对行号
vim.wo.number = true
-- vim.wo.relativenumber = true
-- 高亮所在行
vim.wo.cursorline = true
-- 显示左侧图标指示列
vim.wo.signcolumn = "yes"
-- 右侧参考线，超过表示代码太长了，考虑换行
vim.wo.colorcolumn = "120"
-- 缩进2个空格等于一个Tab
vim.o.tabstop = 4 
vim.bo.tabstop = 4
vim.o.shiftwidth = 4
vim.bo.shiftwidth = 4
vim.o.softtabstop = 4
vim.o.shiftround = true
vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.smartindent = true
-- 搜索大小写不敏感，除非包含大写
vim.o.ignorecase = true
vim.o.smartcase = true
-- 搜索不要高亮
vim.o.hlsearch = false
-- 边输入边搜索
vim.o.incsearch = false
-- 使用增强状态栏后不再需要 vim 的模式提示
vim.o.showmode = true
-- 命令行高为2，提供足够的显示空间
vim.o.cmdheight = 3
-- 鼠标支持
vim.o.mouse = "a"
-- 禁止创建备份文件
vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false
-- smaller updatetime 
--vim.o.updatetime = 300
-- split window 从下边和右边出现
vim.o.splitbelow = true
vim.o.splitright = true
-- 样式
vim.o.background = "dark"
vim.o.termguicolors = true
vim.opt.termguicolors = true


vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])

