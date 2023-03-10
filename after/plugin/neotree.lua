vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])
vim.keymap.set('n', '<leader>fe', function() vim.cmd("Neotree toggle") end )
