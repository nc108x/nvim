local opts = { noremap = true, silent = true }
local keymap = vim.keymap.set

keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- navigation
keymap("n", "<C-h>", "<Cmd>call VSCodeNotify('workbench.action.navigateLeft')<cr>", opts)
keymap("n", "<C-j>", "<Cmd>call VSCodeNotify('workbench.action.navigateDown')<cr>", opts)
keymap("n", "<C-k>", "<Cmd>call VSCodeNotify('workbench.action.navigateUp')<cr>", opts)
keymap("n", "<C-l>", "<Cmd>call VSCodeNotify('workbench.action.navigateRight')<cr>", opts)

-- buffers
keymap("n", "L", "<Cmd>call VSCodeNotify('workbench.action.nextEditorInGroup')<cr>", opts)
keymap("n", "H", "<Cmd>call VSCodeNotify('workbench.action.previousEditorInGroup')<cr>", opts)
keymap("n", "X", "<Cmd>call VSCodeNotify('workbench.action.closeActiveEditor')<cr>", opts)

keymap("n", "<leader>w", ":Write<cr>", opts)
keymap("n", "<leader>nh", ":nohlsearch<cr>", opts)

-- move text
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

keymap("v", "<A-k>", ":m .+1<cr>==", opts)
keymap("v", "<A-j>", ":m .-2<cr>==", opts)

keymap("x", "J", ":move '>+1<cr>gv-gv", opts)
keymap("x", "K", ":move '<-2<cr>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<cr>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<cr>gv-gv", opts)

-- LSP
keymap("n", "gD", "<Cmd>call VSCodeNotify('editor.action.revealDeclaration')<cr>", opts)
keymap("n", "gd", "<Cmd>call VSCodeNotify('editor.action.revealDefinition')<cr>", opts)
keymap("n", "gi", "<Cmd>call VSCodeNotify('editor.action.showHover')<cr>", opts)

-- Spider --
keymap({ "n", "o", "x" }, "w", "<cmd>lua require('spider').motion('w')<CR>")
keymap({ "n", "o", "x" }, "e", "<cmd>lua require('spider').motion('e')<CR>")
keymap({ "n", "o", "x" }, "b", "<cmd>lua require('spider').motion('b')<CR>")
keymap({ "n", "o", "x" }, "ge", "<cmd>lua require('spider').motion('ge')<CR>")
