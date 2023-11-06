require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "lua", "rust" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  highlight = {
    enable = true,              -- false will disable the whole extension
    enable = {"bash", "c", "cpp", "html", "json", "julia", "lua", "python", "toml", "rst", "regex"},              -- false will disable the whole extension
    disable = { "rust", "c_sharp", "clojure", "dart", "elm", "erlang", "fennel" },  -- list of language that will be disabled
    additional_vim_regex_highlighting = false,
  },
}
