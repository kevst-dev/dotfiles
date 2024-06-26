return {
  {
    "phaazon/hop.nvim",
    branch = "v2", -- optional but strongly recommended
    keys = {
      { "<leader>h", ":HopChar2<CR>" },
      { "<leader>H", ":HopPattern<CR>" },
    },
    config = function()
      -- you can configure Hop the way you like here; see :h hop-config
      require("hop").setup { keys = "etovxqpdygfblzhckisuran" }
    end,
  },
  "tpope/vim-surround",
  "tpope/vim-repeat",
  "tpope/vim-eunuch",

  "editorconfig/editorconfig-vim",
  "imsnif/kdl.vim", -- Syntax for kdl

  { "nacro90/numb.nvim", event = "BufReadPre", config = true },
}
