local opts = { noremap = true, silent = true }
local term_opts = { silent = true }
local keymap = vim.api.nvim_set_keymap

keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "L", ":BufferLineCycleNext<CR>", opts)
keymap("n", "H", ":BufferLineCyclePrev<CR>", opts)
keymap("n", "X", ":bdelete<cr>", opts)
keymap("n", "K", ":BufferLineMoveNext<CR>", opts)
keymap("n", "J", ":BufferLineMovePrev<CR>", opts)

-- Exiting vim
keymap("n", "<leader>w", ":w<cr>", opts)
keymap("n", "<leader>q", ":q<cr>", opts)
keymap("n", "<leader>x", ":q!<cr>", opts)

-- Telescope
keymap("n", "<leader>f", ":Telescope find_files<cr>", opts)
keymap("n", "<leader>g", ":Telescope live_grep<cr>", opts)

-- Misc
keymap("n", "<leader>d", ":NvimTreeToggle<cr>", opts)
keymap("n", "<leader>e", ":TroubleToggle<cr>", opts)
keymap("n", "<leader>;", ":lua vim.lsp.buf.format()<cr>", opts)
keymap("n", "<leader>nh", ":nohlsearch<cr>", opts)
keymap("n", "<c-Enter>", ":ToggleTerm", opts)


-- Insert --
-- jk
keymap("i", "jk", "<ESC>", opts)

-- Navigate within insert mode
keymap("i", "<A-h>", "<Left>", opts)
keymap("i", "<A-j>", "<Down>", opts)
keymap("i", "<A-k>", "<Up>", opts)
keymap("i", "<A-l>", "<Right>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-k>", ":m .+1<CR>==", opts)
keymap("v", "<A-j>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)