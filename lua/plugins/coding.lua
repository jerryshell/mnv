return {
  -- treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    config = function(_, opts)
      opts.ensure_installed = {
        "bash",
        "comment",
        "diff",
        "dockerfile",
        "dot",
        "git_rebase",
        "gitattributes",
        "gitcommit",
        "gitignore",
        "lua",
        "make",
        "markdown",
        "markdown_inline",
        "mermaid",
        "python",
        "regex",
        "sql",
        "vim",
        "yaml",
      }
      require("nvim-treesitter.configs").setup(opts)
    end,
  },
}
