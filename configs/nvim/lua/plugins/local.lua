-- --------------------------------------------------------------------------------------------------------------------
-- List of local plugins
-- --------------------------------------------------------------------------------------------------------------------
print(vim.fn.stdpath("config").."/lua/custom/ortiexec.nvim")
return {
  dir = vim.fn.stdpath("config") .. "/lua/custom/ortiexec.nvim",
  config = function()
    require("ortiexec").setup({
      ["*.lua"] = {
        ""
      }
    })
  end
}

