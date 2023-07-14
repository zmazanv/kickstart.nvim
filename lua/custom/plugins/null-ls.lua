-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
    {
        'jose-elias-alvarez/null-ls.nvim',
        dependencies = { 'nvim-lua/plenary.nvim' },
        opts = {},
        config = function()
            local null_ls = require 'null-ls'

            null_ls.setup {
                sources = {
                    null_ls.builtins.formatting.black,
                    null_ls.builtins.formatting.deno_fmt,
                    null_ls.builtins.formatting.isort,
                    null_ls.builtins.formatting.prettier,
                    null_ls.builtins.formatting.shfmt,
                    null_ls.builtins.formatting.stylua,
                    -- null_ls.builtins.code_actions.eslint,
                    null_ls.builtins.code_actions.refactoring,
                    null_ls.builtins.code_actions.shellcheck,
                    -- null_ls.builtins.diagnostics.eslint,
                    null_ls.builtins.diagnostics.jsonlint,
                    null_ls.builtins.diagnostics.luacheck,
                    null_ls.builtins.diagnostics.markuplint,
                    -- null_ls.builtins.diagnostics.semistandardjs,
                    null_ls.builtins.diagnostics.standardjs,
                    null_ls.builtins.diagnostics.tidy,
                    null_ls.builtins.diagnostics.todo_comments,
                    null_ls.builtins.diagnostics.typos,
                    null_ls.builtins.diagnostics.zsh,
                },
            }
        end,
    },
}
