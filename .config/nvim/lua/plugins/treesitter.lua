return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "bash",
      "css",
      "dockerfile",
      "html",
      "javascript",
      "json",
      "lua",
      "python",
      "rust",
      "toml",
      "typescript",
      "tsx",
      "diff",
      "ini",
      "vim",
      "vue",
      "yaml",
      "ruby",
    },
    ts_context_commentstring = {
      enable = true,
      enable_autocmd = false,
    },
  },
}
