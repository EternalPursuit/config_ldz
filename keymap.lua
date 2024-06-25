vim.g.mapleader = " "
vim.g.maplocalleader = " "
local map = vim.api.nvim_set_keymap
-- 复用 opt 参数
local opt = { noremap = true, silent = true }
-- Ctrl + [ 映射到Esc
map("n", "<C-[>", "Esc", opt)

map("i", "jk", "<ESC>", opt)
map("i", "kj", "<ESC>", opt)

-- windows 分屏快捷键
map("n", "<leader>sv", ":vsp<CR>", opt)
map("n", "<leader>sh", ":sp<CR>", opt)

-- 关闭当前
map("n", "<leader>sc", "<C-w>c", opt)
-- 关闭其他
map("n", "<leader>so", "<C-w>o", opt)
-- Mac 下option + hjkl  窗口之间跳转
--map("n", "∑", "<C-w>w", opt)
--map("n", "˙", "<C-w>h", opt)
--map("n", "∆", "<C-w>j", opt)
--map("n", "˚", "<C-w>k", opt)
--map("n", "¬", "<C-w>l", opt)
---- Mac 下option + hjkl  左右移动
--map("i", "˙", "<Left>", opt)
--map("i", "∆", "<Down>", opt)
--map("i", "˚", "<Up>", opt)
--map("i", "¬", "<Right>", opt)

-- 左右比例控制
map("n", "<C-Left>", ":vertical resize -2<CR>", opt)
map("n", "<C-Right>", ":vertical resize +2<CR>", opt)
--map("n", "s,", ":vertical resize -20<CR>", opt)
--map("n", "s.", ":vertical resize +20<CR>", opt)
-- 上下比例
--map("n", "sj", ":resize +10<CR>", opt)
--map("n", "sk", ":resize -10<CR>", opt)
map("n", "<C-Down>", ":resize +2<CR>", opt)
map("n", "<C-Up>", ":resize -2<CR>", opt)
-- 等比例
map("n", "<leader>s=", "<C-w>=", opt)

-- Terminal相关
map("n", "<leader>t", ":sp | terminal<CR>", opt)
map("n", "<leader>vt", ":vsp | terminal<CR>", opt)
map("t", "<Esc>", "<C-\\><C-n>", opt)
map("t", "<A-h>", [[ <C-\><C-N><C-w>h ]], opt)
map("t", "<A-j>", [[ <C-\><C-N><C-w>j ]], opt)
map("t", "<A-k>", [[ <C-\><C-N><C-w>k ]], opt)
map("t", "<A-l>", [[ <C-\><C-N><C-w>l ]], opt)

map("n", "<A-h>", [[ <C-\><C-N><C-w>h ]], opt)
map("n", "<A-j>", [[ <C-\><C-N><C-w>j ]], opt)
map("n", "<A-k>", [[ <C-\><C-N><C-w>k ]], opt)
map("n", "<A-l>", [[ <C-\><C-N><C-w>l ]], opt)

map("i", "<A-h>", [[ <C-\><C-N><C-w>h ]], opt)
map("i", "<A-j>", [[ <C-\><C-N><C-w>j ]], opt)
map("i", "<A-k>", [[ <C-\><C-N><C-w>k ]], opt)
map("i", "<A-l>", [[ <C-\><C-N><C-w>l ]], opt)

map("i", "<C-h>", "<left>", opt)
map("i", "<C-j>", "<Down>", opt)
map("i", "<C-k>", "<Up>", opt)
map("i", "<C-l>", "<Right>", opt)
--
--

-- visual模式下缩进代码
map("v", "<", "<gv", opt)
map("v", ">", ">gv", opt)
-- 上下移动选中文本
map("v", "J", ":move '>+1<CR>gv-gv", opt)
map("v", "K", ":move '<-2<CR>gv-gv", opt)

-- 上下滚动浏览
map("n", "<C-j>", "4j", opt)
map("n", "<C-k>", "4k", opt)
-- ctrl u / ctrl + d  只移动9行，默认移动半屏
map("n", "<C-u>", "9k", opt)
map("n", "<C-d>", "9j", opt)

-- 在visual 模式里粘贴不要复制
map("v", "p", '"_dP', opt)

-- 退出
map("n", "<leader>q", ":qa<CR>", opt)
map("n", "<leader>qq", ":q!<CR>", opt)
map("n", "<leader>ww", ":w<CR>", opt)
map("n", "<leader>Q", ":qa!<CR>", opt)
