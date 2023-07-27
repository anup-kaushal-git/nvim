-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight group
vim.opt.termguicolors = true

-- Setup
require("nvim-tree").setup({
  filters = {
    dotfiles = true,
  },
  view = {
    signcolumn = "yes",
    float = {
      enable = false,
      quit_on_focus_loss = true,
      open_win_config = {
        relative = "editor",
        border = "rounded",
        width = 40,
      },
    },
  },
  git = {
    enable = true,  
  },
  modified = {
    enable = true,
    show_on_dirs = true,
    show_on_open_dirs = false,
  },
  renderer = {
    highlight_git = true,
    highlight_opened_files = "all",
    highlight_modified = "all",
    root_folder_label = false,
    indent_width = 2,
    icons = {
      webdev_colors = true,
      git_placement = "after",
      modified_placement = "before",
      padding = "  ",
      show = {
        file = true,
        folder = true,
        folder_arrow = true,
        git = true,
        modified = true,
      },
      glyphs = {
        default = "",
        symlink = "",
        bookmark = "󰆤",
        modified = "●",
        folder = {
          arrow_closed = "",
          arrow_open = "",
          default = "",
          open = "",
          empty = "",
          empty_open = "",
          symlink = "",
          symlink_open = "",
        },
        git = { 
          unstaged = "✗",
          staged = "✓",
          unmerged = "",
          renamed = "➜",
          untracked = "★",
          deleted = "",
          ignored = "◌",
        },
      },
    },
  },
  diagnostics = {
    enable = false,
        show_on_dirs = false,
        show_on_open_dirs = true,
        debounce_delay = 50,
        severity = {
          min = vim.diagnostic.severity.HINT,
          max = vim.diagnostic.severity.ERROR,
        },
        icons = {
          hint = "",
          info = "",
          warning = "",
          error = "",
        },
      },
})

-- setting key controls 
vim.keymap.set('n', '<C-q>', ':NvimTreeToggle<CR>')
vim.keymap.set('i', '<C-q>', '<ESC> :NvimTreeToggle<CR>')
vim.keymap.set('v', '<C-q>', '<ESC> :NvimTreeToggle<CR>')

-- autoclosing Nvim-tree when opening file
 --vim.api.nvim_create_autocmd({"BufLeave"}, {
  --pattern = {"NvimTree_1"},
  --callback = function() vim.cmd("NvimTreeClose") end,
--})


