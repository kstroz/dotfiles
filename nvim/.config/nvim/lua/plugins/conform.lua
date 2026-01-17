return {
  "stevearc/conform.nvim",
  lazy = true,
  dependencies = { "mason-org/mason.nvim" },
  opts = {
    formatters_by_ft = {
      python = { "isort", "black" },
      htmldjango = { "djlint" },
    },
    formatters = {
      djlint = {
        command = "djlint",
        args = { "--reformat", "-" },
        stdin = true,
      },
    },
  },
}
