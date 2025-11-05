return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "solidity",
        "css",
        "bash",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "query",
        "regex",
        "tsx",
        "typescript",
        "vim",
        "yaml",
        "rust",
      },

      sync_install = false,

      auto_install = true,

      highlight = {
        enable = true,

        additional_vim_regex_highlighting = false,
      },
      autotag = {
        enable = true,
      },
    },
  },
}
