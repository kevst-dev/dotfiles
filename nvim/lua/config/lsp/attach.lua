return function(client, bufnr)
  local _ = vim.api.nvim_buf_get_option(0, "filetype")
  -- keymaps for lsp
  vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = 0, desc = "LSP Help information of symbol under the cursor" })
  vim.keymap.set("n", "<leader>vrn", vim.lsp.buf.rename, { buffer = 0, desc = "LSP Rename symbol under cursor" })
  vim.keymap.set("i", "<c-h>", vim.lsp.buf.signature_help, { buffer = 0, desc = "LSP Signature help" })
  vim.keymap.set("n", "<leader>vo", ":LspRestart<cr>", { noremap = true, desc = "LSP Restart Server" })
  vim.keymap.set({ "n", "v" }, "<leader>vca", vim.lsp.buf.code_action, { buffer = 0, desc = "LSP Code actions" })
  vim.keymap.set("n", "<leader>vf", function()
    return vim.lsp.buf.format {
      async = true,
      filter = function(cli)
        return cli.name ~= "lua_ls"
      end,
    }
  end, { buffer = 0, desc = "LSP format file" })

  vim.bo.omnifunc = "v:lua.vim.lsp.omnifunc"

  if client.server_capabilities.inlayHintProvider then
    vim.lsp.inlay_hint(bufnr, true)
  end
end
