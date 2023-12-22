-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set("n", "<leader>pv", ":Ex<Return>", opts)

-- New Tabs
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)

--Split Window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

--Navigate Window
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sl", "<C-w>l")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sj", "<C-w>j")

--Resize Window
keymap.set("n", "<C-w>left", "<C-w><")
keymap.set("n", "<C-w>right", "<C-w>>")
keymap.set("n", "<C-w>up", "<C-w>+")
keymap.set("n", "<C-w>down", "<C-w>-")

--Yank to Clipboard
keymap.set({ "n", "v" }, "<leader>y", [["+y]])
keymap.set("n", "<leader>Y", [["+Y]])

--Scroll up and down half a screen and "zz" center view
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")

--Move line up and down in Visual Line Mode
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

--Preserve paste register
keymap.set("x", "<leader>p", [["_dP]])

--Highlight word under cursor to replace
keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
