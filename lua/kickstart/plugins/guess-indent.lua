-- File: lua/plugins/guess-indent.lua
return {
  "NMAC427/guess-indent.nvim",
  event = "BufReadPre", -- Load on file open
  config = true,        -- Uses plugin's default setup
}
