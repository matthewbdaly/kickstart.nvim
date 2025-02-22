return {
  'gbprod/phpactor.nvim',
  build = function()
    require 'phpactor.handler.update'()
  end,
  requires = {
    'nvim-lua/plenary.nvim', -- required to update phpactor
    'neovim/nvim-lspconfig', -- required to automaticly register lsp serveur
  },
  config = function()
    require('phpactor').setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
      filetypes = {
        'php',
        'phtml',
      },
      install = {
        php_bin = '~/.phpbrew/php/php-8.3.13/bin/php',
        bin = '/usr/local/bin/phpactor',
      },
    }
  end,
}
