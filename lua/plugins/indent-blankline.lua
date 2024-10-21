return {
  'lukas-reineke/indent-blankline.nvim',
  dependencies = {
    'TheGLander/indent-rainbowline.nvim'
  },
  main = 'ibl',
  opts = {},
  config = function (_, opts)
    require('ibl').setup(require('indent-rainbowline').make_opts({}))
  end
}
