require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  highlight = {
    enable = true,              -- false will disable the whole extension
    enable = {"bash", "c", "cpp", "html", "json", "julia", "lua", "python", "toml", "rst", "regex"},              -- false will disable the whole extension
    disable = { "rust", "c_sharp", "clojure", "dart", "elm", "erlang", "fennel" },  -- list of language that will be disabled
  },
}
