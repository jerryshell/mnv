return {
  -- treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",
        "comment",
        "diff",
        "dockerfile",
        "dot",
        "git_rebase",
        "gitattributes",
        "gitcommit",
        "gitignore",
        "graphql",
        "http",
        "jq",
        "lua",
        "make",
        "markdown",
        "markdown_inline",
        "python",
        "regex",
        "sql",
        "vim",
        "yaml",
      },
    },
  },
}
