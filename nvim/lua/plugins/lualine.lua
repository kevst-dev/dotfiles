return {
  "nvim-lualine/lualine.nvim",
  priority=1000,
  config = function()
    require("lualine").setup({
      options = {
        theme = 'onedark',
        icons_enabled = true,
        globalstatus = true,
      }
    })
  end
}
