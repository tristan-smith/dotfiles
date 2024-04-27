return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local tsConfig = require("nvim-treesitter.configs")
    tsConfig.setup({
      auto_install = true,
      ensure_installed = { "lua", "c", "cpp", "python", "javascript", "html", "json", "gitignore", "css", "scss", "arduino" },
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}
