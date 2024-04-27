return {
  "neanias/everforest-nvim",
  lazy = false,
  priority = 1000,
  config = function()
    -- Color Scheme
    require("everforest").load()
  end
}
