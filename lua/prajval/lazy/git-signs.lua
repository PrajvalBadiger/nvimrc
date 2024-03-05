return {
    "lewis6991/gitsigns.nvim",
    config = function()
        local on_attach = function()
        end

        require('gitsigns').setup {
            on_attach                    = on_attach,
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
