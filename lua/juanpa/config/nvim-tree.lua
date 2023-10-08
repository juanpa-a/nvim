return {
  view = {
    adaptive_size = false,
    side = "left",
    width = 30,
    preserve_window_proportions = true,
  },
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
  renderer = {
    root_folder_label = false,
    highlight_git = false,
    highlight_opened_files = "none",

    indent_markers = {
      enable = false,
    },

    icons = {
      show = {
        file = true,
        folder = true,
        folder_arrow = true,
        git = true,
      },

      glyphs = {
        default = "󰈚",
        symlink = "",
        folder = {
          default = "",
          empty = "",
          empty_open = "",
          open = "",
          symlink = "",
          symlink_open = "",
          arrow_open = "",
          arrow_closed = "",
        },
        git = {
          unstaged = "✗",
          staged = "✓",
          unmerged = "",
          renamed = "➜",
          untracked = "★",
          deleted = "",
          ignored = "◌",
        },
      },
    },
  },
}

-- return {
--   filters = {
--     dotfiles = false,
--     exclude = { vim.fn.stdpath "config" .. "/lua/custom" },
--   },
--   disable_netrw = true,
--   hijack_netrw = true,
--   hijack_cursor = true,
--   hijack_unnamed_buffer_when_opening = false,
--   sync_root_with_cwd = true,
--   update_focused_file = {
--     enable = true,
--     update_root = false,
--   },

--   git = {
--     enable = false,
--     ignore = true,
--   },
--   filesystem_watchers = {
--     enable = true,
--   },
--   actions = {
--     open_file = {
--       resize_window = true,
--     },
--   },

-- }
