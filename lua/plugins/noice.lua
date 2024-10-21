return {
  'folke/noice.nvim',
  event = 'VeryLazy',
  opts = {
    routes = {
      {
        filter = { event = 'notify', find = 'No information available' },
        opts = { skip = true }
      }
    },
    present = {
      lsp_doc_border = true
    }
  },
  dependencies = {
    'MunifTanjim/nui.nvim',
    -- 'rcarriga/nvim-notify'
  }
}
