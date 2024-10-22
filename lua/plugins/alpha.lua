return {
  "goolord/alpha-nvim",
  event = 'VimEnter',
  config = function ()
    local alpha = require('alpha')
    local dashboard = require('alpha.themes.dashboard')

    -- Set header
    dashboard.section.header.val = {
      "                                                     ",
      "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
      "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
      "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
      "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
      "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
      "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
      "                                                     ",
    }

    -- Set menu
    dashboard.section.buttons.val = {
      dashboard.button( "e", "   New file" , ":ene <BAR> startinsert <CR>"),
      dashboard.button( "f", "󰮗   Find file", ":FzfLua files<CR>"),
      dashboard.button( "w", "󱘞   Find word", ":FzfLua live_grep<CR>"),
      dashboard.button( "r", "󱀸   Recent"   , ":Telescope oldfiles<CR>"),
      dashboard.button( "R", "󰁯   Restore Session for Current Directory", ":SessionRestore<CR>"),
      dashboard.button( "q", "󰗼   Quit NVIM", ":q<CR>"),
    }

    -- Send config to alpha
    alpha.setup(dashboard.opts)

    -- Disable folding on alpha buffer
    vim.cmd([[
      autocmd FileType alpha setlocal nofoldenable
    ]])
  end
}
