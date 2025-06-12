return {
  'f-person/git-blame.nvim',
  event = 'VeryLazy',
  opts = {
    enabled = true,
    message_template = ' <<sha>> • <author> • <date> • <summary>',
    date_format = '%m-%d-%Y',
  },
  config = function()
    local gb = require 'gitblame'

    vim.keymap.set('n', '<leader>gl', gb.open_commit_url, { desc = 'Open [G]it commit [L]ink' })
  end,
}
