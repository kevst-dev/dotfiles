return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    },
    keys = {
      { "<leader>T", ":Neotree toggle<cr>" },
      { "<leader>t", ":Neotree <cr>" },
    },
  },
  {
    "liuchengxu/vista.vim",
    keys = {
      { "<leader>b", ":Vista<cr>" },
    }
  }
}
