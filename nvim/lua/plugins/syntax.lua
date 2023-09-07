return {
  {
    "lukas-reineke/indent-blankline.nvim",
    config = function()
      require("indent_blankline").setup {
        show_end_of_line = true,
      }
    end,
  },
  {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup({ "*" }, {
        rgb = true, -- #rgb hex codes
        rrggbb = true, -- #rrggbb hex codes
        names = true, -- "name" codes like blue
        rrggbbaa = true, -- #rrggbbaa hex codes
        rgb_fn = true, -- css rgb() and rgba() functions
        hsl_fn = true, -- css hsl() and hsla() functions
        css = true, -- enable all css features: rgb_fn, hsl_fn, names, rgb, rrggbb
        css_fn = true, -- enable all css *functions*: rgb_fn, hsl_fn
      })
    end,
  },
}
