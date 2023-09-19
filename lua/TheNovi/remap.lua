local b = vim.keymap.set
vim.g.mapleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- b("n", "<leader>pv", vim.cmd.Ex)
b("n", "<leader>so", ':so<CR>')

-- Move highlighted lines
b("v", "K", ":m '<-2<CR>gv=gv")
b("v", "J", ":m '>+1<CR>gv=gv")

-- Keeps cursor at middle while: jumping/searching
-- b("n", "<C-d>", "<C-d>zz")
-- b("n", "<C-u>", "<C-u>zz")
-- b("n", "n", "nzzzv")
-- b("n", "N", "Nzzzv")

-- Delete wihout yanking
b({ "n", "v" }, "<leader>d", [["_d]])

-- Yank to clipboard
b({ "n", "v" }, "<leader>y", [["+y]])
b("n", "<leader>Y", [["+Y]])
b({ "n", "v" }, "<leader>p", [["+p]])

-- Replace all occurences (of word cursor is on)
-- b({ "n", "v" }, "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Escape remaps
b("i", "<C-c>", "<Esc>")
b("i", "jk", "<Esc>")

-- Ignore Q
b("n", "Q", "<nop>")
--vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
--vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- vim quickfix
--vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
--vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
--vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
--vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Funny thing, needs treesitter
--vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");
