return {
  {  
    "echasnovski/mini.ai",
    version = false,
    config = function()
      local spec_treesitter = require("mini.ai").gen_spec.treesitter
      require("mini.ai").setup({
        custom_textobjects = {
          f = spec_treesitter({ 
            a = "@function.outer", 
            i = "@function.inner" 
          }),
          k = spec_treesitter({ 
            a = "@class.outer",
            i = "@class.inner" 
          }),
          o = spec_treesitter({
            a = { '@conditional.outer', '@loop.outer' },
            i = { '@conditional.inner', '@loop.inner' },
          })
        },
      })
    end,
    -- mappings = {
    --   -- Main textobject prefixes
    --   around = 'a',
    --   inside = 'i',
  
    --   -- Next/last variants
    --   around_next = 'an',
    --   inside_next = 'in',
    --   around_last = 'al',
    --   inside_last = 'il',
  
    --   -- Move cursor to corresponding edge of `a` textobject
    --   goto_left = 'g[',
    --   goto_right = 'g]',
    -- },
  
    -- -- Number of lines within which textobject is searched
    -- n_lines = 50,

    -- -- How to search for object (first inside current line, then inside
    -- -- neighborhood). One of 'cover', 'cover_or_next', 'cover_or_prev',
    -- -- 'cover_or_nearest', 'next', 'previous', 'nearest'.
    -- search_method = 'cover_or_next',

    -- -- Whether to disable showing non-error feedback
    -- silent = false,
  },
  {
    "echasnovski/mini.surround",
    opts = {
      mappings = {
        add = "ys",
        delete = "ds",
        find = "yf",
        find_left = "yF",
        highlight = "",
        replace = "cs",
        update_n_lines = "",
      },
      search_method = "cover_or_next",
    },
    config = function(_, opts)
      require("mini.surround").setup(opts)
    end,
  }
}