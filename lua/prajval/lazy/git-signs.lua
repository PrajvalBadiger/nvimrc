return {
    "lewis6991/gitsigns.nvim",
    config = function()
        local on_attach = function()
            vim.api.nvim_set_hl(0, 'GitSignsAdd', { link = "GruvboxGreen" })
            vim.api.nvim_set_hl(0, 'GitSignsChange', { link = "GruvboxAqua" })
            vim.api.nvim_set_hl(0, 'GitSignsDelete', { link = "GruvboxRed" })
        end

        require('gitsigns').setup {
            on_attach                    = on_attach,
            signs                        = {
                add          = { hl = 'GitSignsAdd', text = '+', numhl = 'GitSignsAddNr', linehl = 'GitSignsAddLn' },
                change       = { hl = 'GitSignsChange', text = '~', numhl = 'GitSignsChangeNr', linehl = 'GitSignsChangeLn' },
                delete       = { hl = 'GitSignsDelete', text = '_', numhl = 'GitSignsDeleteNr', linehl = 'GitSignsDeleteLn' },
                topdelete    = { hl = 'GitSignsDelete', text = '‾', numhl = 'GitSignsDeleteNr', linehl = 'GitSignsDeleteLn' },
                changedelete = { hl = 'GitSignsChange', text = '~', numhl = 'GitSignsChangeNr', linehl = 'GitSignsChangeLn' },
                untracked    = { hl = 'GitSignsAdd', text = '', numhl = 'GitSignsAddNr', linehl = 'GitSignsAddLn' },
            },
            signcolumn                   = true,  -- Toggle with `:Gitsigns toggle_signs`
            numhl                        = true,  -- Toggle with `:Gitsigns toggle_numhl`
            watch_gitdir                 = {
                interval = 1000,
                follow_files = true
            },
            attach_to_untracked          = true,
            current_line_blame           = false, -- Toggle with `:Gitsigns toggle_current_line_blame`
            sign_priority                = 6,
            update_debounce              = 100,
            status_formatter             = nil,   -- Use default
            max_file_length              = 40000, -- Disable if file is longer than this (in lines)
        }
    end
}
