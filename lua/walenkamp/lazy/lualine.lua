return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        require('lualine').setup({
            options = {
                icons_enabled = true,
                theme = 'auto',
            },
            sections = {
                lualine_a = {'mode'},
                lualine_b = {'branch', 'diff', 'diagnostics'},
                lualine_c = {{'filename', path = 1}},
                lualine_x = {
                    'encoding',
                    {
                        'fileformat',
                        symbols = {
                            unix = '',
                            dos = '',
                            mac = '',
                        }
                    },
                    'filetype'
                },
                lualine_z = {'location'}
            },
        })
    end
}
