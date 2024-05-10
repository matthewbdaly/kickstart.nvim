return {
  {
    'tpope/vim-fugitive',
    cmd = 'Git',
    setup = function()
      vim.g.fugitive_no_maps = 1
    end,
  },
}
