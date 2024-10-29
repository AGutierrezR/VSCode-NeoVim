return {
  "chrisgrieser/nvim-various-textobjs",
  config = function()
    -- default config
    require("various-textobjs").setup({
      -- set to 0 to only look in the current line
      lookForwardSmall = 2,
      lookForwardBig = 0,
      -- use suggested keymaps (see overview table in README)
      useDefaultKeymaps = false,
      -- disable only some default keymaps, e.g. { "ai", "ii" }
      disabledKeymaps = {},
    })

    vim.keymap.set({ 'o', 'x' }, 'ie', '<cmd>lua require("various-textobjs").entireBuffer()<CR>')

    vim.keymap.set({ 'o', 'x' }, 'iy', '<cmd>lua require("various-textobjs").key("inner")<CR>')
    vim.keymap.set({ 'o', 'x' }, 'ay', '<cmd>lua require("various-textobjs").key("around")<CR>')

    vim.keymap.set({ 'o', 'x' }, 'iv', '<cmd>lua require("various-textobjs").value("inner")<CR>')
    vim.keymap.set({ 'o', 'x' }, 'av', '<cmd>lua require("various-textobjs").value("around")<CR>')

    vim.keymap.set({ 'o', 'x' }, 'il', '<cmd>lua require("various-textobjs").lineCharacterwise("inner")<CR>')
    vim.keymap.set({ 'o', 'x' }, 'al', '<cmd>lua require("various-textobjs").lineCharacterwise("around")<CR>')

    vim.keymap.set(
      { 'o', 'x' },
      'ix',
      '<cmd>lua require("various-textobjs").htmlAttribute("inner")<CR>'
    )
    vim.keymap.set(
      { 'o', 'x' },
      'ax',
      '<cmd>lua require("various-textobjs").htmlAttribute("around")<CR>'
    )
  end
}
