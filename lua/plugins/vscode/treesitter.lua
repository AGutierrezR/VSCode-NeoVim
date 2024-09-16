return {
  {  
    "nvim-treesitter/nvim-treesitter",
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = { "lua", "vim", "javascript", "typescript", "json", "html", "markdown", "markdown_inline" },
        
        highlight = {
          enable = true,
        },
        
        -- Se
        incremental_selection = {
          enable = true,
          keymaps = {
            node_incremental = "v",
            node_decremental = "V",
          }
        },
      })
      
      -- Configuration to treat JSONC files as JSON
      vim.treesitter.language.register('json', 'jsonc')
    end, 
  },
  "nvim-treesitter/nvim-treesitter-textobjects"
}