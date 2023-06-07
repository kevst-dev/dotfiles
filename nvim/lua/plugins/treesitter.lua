return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    dependencies = {
        "nvim-treesitter/playground",
        "nvim-treesitter/nvim-treesitter-refactor",
        "nvim-treesitter/nvim-treesitter-textobjects",
    },
    config = function()
      require "nvim-treesitter.configs".setup({
        -- A list of parser names, or "all"
        ensure_installed = {
          -- WEB
          "html", "css",
          "vue",
          "javascript",
          "typescript",

          -- General
          "comment",
          "gitignore",

          "lua",
          "rust",
          "python",
          "bash",
          "sql",

          -- "powershell"
        },
        sync_install = false,
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = false,
        },
        refactor = {
          highlight_definitions = { enable = true },
          smart_rename = {
            enable = true,
            keymaps = {
              smart_rename = "grr",
            },
          },
          navigation = {
            enable = true,
            keymaps = {
              goto_definition = "gnd",
              list_definitions = "gnD",
              list_definitions_toc = "gO",
              goto_next_usage = "<A-*>",
              goto_previous_usage = "<A-#>",
            },
          },
        },
        rainbow = {
          enable = true,
          -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
          extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
          max_file_lines = nil, -- Do not enable for files with more than n lines, int
          -- colors = {}, -- table of hex strings
          -- termcolors = {} -- table of colour name strings
        }
      })

    end
  },
  {
    "p00f/nvim-ts-rainbow",
    config = function()
      require("indent_blankline").setup {
        show_end_of_line = true,
      }
    end
  },
  {
    "vmchale/just-vim"
  },
}
