local keymap = vim.keymap

vim.g.mapleader = " "

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- Split
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

-- Tabs
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
keymap.set("n", "<leader>tl", "<cmd>tabn<CR>", { desc = "Go to next tab" })
keymap.set("n", "<leader>th", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })

-- Turn Off arrow buttons
keymap.set('n', '<Up>', '<nop>', opts)
keymap.set('n', '<Down>', '<nop>', opts)
keymap.set('n', '<Left>', '<nop>', opts)
keymap.set('n', '<Right>', '<nop>', opts)

keymap.set('v', '<Up>', '<nop>', opts)
keymap.set('v', '<Down>', '<nop>', opts)
keymap.set('v', '<Left>', '<nop>', opts)
keymap.set('v', '<Right>', '<nop>', opts)
