return {
  {
    "echasnovski/mini.ai",
    version = false,
    config = function()
      -- local spec_treesitter = require("mini.ai").gen_spec.treesitter
      require("mini.ai").setup({
        mappings = {
          around = 'a',
          inside = 'i',
          -- Next/last variants
          around_next = '',
          inside_next = '',
          around_last = '',
          inside_last = '',
        },
        -- -- Number of lines within which textobject is searched
        -- n_lines = 50,

        -- How to search for object (first inside current line, then inside
        -- neighborhood). One of 'cover', 'cover_or_next', 'cover_or_prev',
        -- 'cover_or_nearest', 'next', 'previous', 'nearest'.
        -- search_method = 'cover_or_next',

        -- Whether to disable showing non-error feedback
        silent = true
      })
    end,
  },
  {
    "echasnovski/mini.surround",
    opts = {
      mappings = {
        add = "Ms",
        delete = "Md",
        replace = "Mr",
        find = "",
        find_left = "",
        highlight = "",
        update_n_lines = "",
      },
      search_method = "cover_or_next",
    },
    config = function(_, opts)
      require("mini.surround").setup(opts)
    end,
  }
}
