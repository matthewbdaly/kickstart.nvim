-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'olimorris/codecompanion.nvim',
    config = function()
      require('codecompanion').setup {
        strategies = {
          chat = {
            slash_commands = {
              ['file'] = {
                -- Location to the slash command in CodeCompanion
                callback = 'strategies.chat.slash_commands.file',
                description = 'Select a file using Telescope',
                opts = {
                  provider = 'telescope', -- Other options include 'default', 'mini_pick', 'fzf_lua', snacks
                  contains_code = true,
                },
              },
            },
          },
        },
        extensions = {
          mcphub = {
            callback = 'mcphub.extensions.codecompanion',
            opts = {
              show_result_in_chat = true, -- Show mcp tool results in chat
              make_vars = true, -- Convert resources to #variables
              make_slash_commands = true, -- Add prompts as /slash commands
            },
          },
        },
      }
    end,
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-treesitter/nvim-treesitter',
    },
  },
}
