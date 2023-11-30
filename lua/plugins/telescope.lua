return {
  "nvim-telescope/telescope.nvim",
  keys = {
    -- disable the keymap to grep files
    { "<leader>/", false },
    -- change a keymap
    { "<leader>pf", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
    { "<leader>ps", "<cmd>Telescope current_buffer_fuzzy_find<cr>", desc = "Find String in Current Buffer" },
    { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Find buffers" },
    -- add a keymap to browse plugin files
    {
      "<leader>fp",
      function()
        require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root })
      end,
      desc = "Find Plugin File",
    },
  },
  opts = function()
    return {
      defaults = {
        file_ignore_patterns = { "node_modules" },
      },
    }
  end,
}
