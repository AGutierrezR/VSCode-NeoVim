return {
  {  
    "nvim-treesitter/nvim-treesitter",
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = { "lua", "vim", "javascript", "typescript", "json" },
        
        highlight = {
          enable = true,
        }
      })
    end, 
  },
  "nvim-treesitter/nvim-treesitter-textobjects"
}