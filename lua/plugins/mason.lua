return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "shfmt",
        "lua-language-server",
        "typescript-language-server",
        -- "prettier",
        "prettierd",
        -- "eslint-lsp",
        "eslint_d",
        "dart-debug-adapter",
        "solidity",
      },
    },
  },
}
