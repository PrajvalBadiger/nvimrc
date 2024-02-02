return {
    'nvim-lualine/lualine.nvim',

    dependencies = {
        'nvim-tree/nvim-web-devicons',
    },

    config = function()
        require('lualine').setup {
            options = {
                icons_enabled = false,
                theme = 'gruvbox',
                component_separators = { left = '', right = '' },
                section_separators = { left = '', right = '' },
                always_divide_middle = true,
                globalstatus = true,
                refresh = {
                    statusline = 1000,
                    tabline = 1000,
                    winbar = 1000,
                }
            },
            sections = {
                lualine_a = { 'mode' },
                lualine_b = { 'branch', 'diff', 'diagnostics' },
                lualine_c = { 'filename' },
                lualine_x = { 'arduino_status' },
                lualine_y = { 'filetype' },
                lualine_z = { 'progress' }
            },
            extensions = { 'quickfix', 'fugitive' }
        }
    end
}
