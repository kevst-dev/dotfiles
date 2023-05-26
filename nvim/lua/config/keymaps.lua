local map = vim.keymap.set

-- guardar/salir
map("n", "<leader>w", ":w<CR>")
map("n", "<leader>q", ":q<CR>")

-- scroll
map("n", "<A-j>", "10<C-e>")
map("n", "<A-k>", "10<C-y>")

-- Tabs
map("n", "<leader>n", ":tabnew<CR>")
map("n", "<leader>x", ":tabnext<CR>")
map("n", "<leader>z", ":tabprevious<CR>")
