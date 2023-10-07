return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local nvimtree = require("nvim-tree")

    -- recommended settings from nvim-tree documentation
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    -- -- change color for arrows in tree to light blue
    vim.cmd([[ highlight NvimTreeFolderArrowClosed guifg=#ca9ee6	 ]])
    vim.cmd([[ highlight NvimTreeFolderArrowOpen guifg=#ca9ee6	 ]])

    -- configure nvim-tree
    nvimtree.setup({
      view = {
        width = 35,
      },
      -- change folder arrow icons
      renderer = {
        indent_markers = {
          enable = true,
        },
        icons = {
          glyphs = {
            folder = {
              arrow_closed = "", -- arrow when folder is closed
              arrow_open = "", -- arrow when folder is open
            },
          },
        },
      },
      -- disable window_picker for
      -- explorer to work well with
      -- window splits
      actions = {
        open_file = {
          window_picker = {
            enable = false,
          },
        },
      },
      filters = {
        custom = { ".DS_Store" },
      },
      git = {
        ignore = false,
      },
    })

    -- set keymaps
    local keymap = vim.keymap                                                                                           -- for conciseness
    keymap.set("n", "<leader>e", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle file explorer on current file" }) -- toggle file explorer on current file
  end,
}
