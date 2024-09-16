vim.api.nvim_create_autocmd({ 'BufLeave', 'VimLeave' }, {
    group = vim.api.nvim_create_augroup('HarpoonCore', { clear = true }),
    callback = function()
        require('harpoon-core.mark').update_cursor()
    end,
})
