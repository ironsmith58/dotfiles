-- [[ plug.lua ]]

return require('packer').startup(function(use)
    -- [[ Plugins Go Here ]]
    use {
        'nvim-tree/nvim-tree.lua',
        requires = 'nvim-tree/nvim-web-devicons'        -- filesystem icons
    }
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }
    -- [[ Theme ]]
  use { 'mhinz/vim-startify' }                       -- start screen
  use { 'DanilaMihailov/beacon.nvim' }               -- cursor jump
  use {
    'nvim-lualine/lualine.nvim',                     -- statusline
    requires = {'nvim-tree/nvim-web-devicons',
                opt = true}
  }
  use { 'Mofiqul/dracula.nvim' }                     -- colorscheme

end)
-- ,
-- config = {
-- package_root = vim.fn.stdpath('config') .. '/site/pack'
-- }
