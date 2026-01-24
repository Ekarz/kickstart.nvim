-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  lazy = false,
  keys = {
    { '\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
  },
  opts = {
    filesystem = {
      window = {
        mappings = {
          ['\\'] = 'close_window',
        },
      },
    },
  },
  config = function()
    vim.keymap.set('n', '<leader>eb', '<Cmd>Neotree buffers<CR>', { desc = 'Buffers' })
    vim.keymap.set('n', '<leader>ee', '<Cmd>Neotree filesystem left toggle reveal<CR>', { desc = 'Tree' })
    vim.keymap.set('n', '<leader>es', '<Cmd>Neotree git_status float<CR>', { desc = 'Git Status' })
  end,
}
