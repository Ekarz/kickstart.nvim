return {
  'sindrets/diffview.nvim',
  config = function()
    local _diffview = require 'diffview'
    _diffview.setup {

      vim.keymap.set('n', '<leader>do', function()
        _diffview.open()
      end, { desc = '[O]pen local diffs' }),

      vim.keymap.set('n', '<leader>db', function()
        _diffview.file_history()
      end, { desc = 'See diffs for [B]ranch' }),
    }
  end,
}
