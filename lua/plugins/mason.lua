return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "shfmt",
        "lua-language-server",
        "typescript-language-server",
        "prettierd",
        "eslint_d",
        "solidity",
      },
    },
  },
}
