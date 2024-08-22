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
          c = spec_treesitter({ 
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
  },
  {
    "echasnovski/mini.surround",
    opts = {
      mappings = {
        add = "ys",
        delete = "ds",
        find = "yf",
        find_left = "yF",
        highlight = "vs",
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