local map = vim.keymap.set

-- guardar/salir
map("n", "<leader>w", ":w<CR>", { desc = "Guardar archivo actual" })
map("n", "<leader>q", ":q<CR>", { desc = "Cerrar archivo actual" })

-- scroll
map("n", "<A-j>", "10<C-e>", { desc = "Scroll de 10 lineas hacia abajo" })
map("n", "<A-k>", "10<C-y>", { desc = "Scroll de 10 lineas hacia arriba" })

-- Tabs
map("n", "<leader>n", ":tabnew<CR>", { desc = "Nueva pestaña" })
map("n", "<leader>x", ":tabnext<CR>", { desc = "Navegar a la pestaña de la derecha" })
map("n", "<leader>z", ":tabprevious<CR>", { desc = "Navegar a la pestaña de la izquierda" })
