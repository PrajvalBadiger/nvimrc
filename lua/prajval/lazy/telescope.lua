local builtin = require('telescope.builtin')
return {
    "nvim-telescope/telescope.nvim",

    tag = "0.1.5",

    dependencies = {
        "nvim-lua/plenary.nvim"
    },

    keys = {
        { '<leader>pf', builtin.find_files, { desc = 'Find Files' } },
        { '<C-p>',      builtin.git_files,  { desc = 'Git files' } },
        { '<leader>vh', builtin.help_tags,  {} },
        {
            '<leader>pws',
            function()
                local word = vim.fn.expand("<cword>")
                builtin.grep_string({ search = word })
            end
        },
        {
            '<leader>pWs',
            function()
                local word = vim.fn.expand("<cWORD>")
                builtin.grep_string({ search = word })
            end
        },
        {
            '<leader>ps',
            function()
                builtin.grep_string({ search = vim.fn.input("Grep > ") })
            end,
            { desc = 'Builtin grep' }
        },
    },

    lazy = true,
    config = function()
        require('telescope').setup({
            defaults = {
                winblend = 0,

                layout_strategy = "horizontal",
                layout_config = {
                    width = 0.95,
                    height = 0.85,
                    -- preview_cutoff = 120,
                    prompt_position = "top",

                    horizontal = {
                        preview_width = function(_, cols, _)
                            if cols > 200 then
                                return math.floor(cols * 0.4)
                            else
                                return math.floor(cols * 0.6)
                            end
                        end,
                    },

                    vertical = {
                        width = 0.9,
                        height = 0.95,
                        preview_height = 0.5,
                    },

                    flex = {
                        horizontal = {
                            preview_width = 0.9,
                        },
                    },
                },
                selection_strategy = "reset",
                sorting_strategy = "ascending",
                scroll_strategy = "cycle",
            },
        })
    end
}
