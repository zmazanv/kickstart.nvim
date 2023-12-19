-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
    {
        'CRAG666/code_runner.nvim',
        config = function()
            require('code_runner').setup {
                filetype = {
                    python = 'python -u'
                }
            })
        end,
    },
    vim.keymap.set('n', '<Leader><CR>', ':RunCode<CR>'),
    vim.keymap.set('n', '<Leader><BS>', ':RunClose<CR>'),
}
