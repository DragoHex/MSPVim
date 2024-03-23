return {
  {
    "ray-x/go.nvim",
    dependencies = { -- optional packages
      "ray-x/guihua.lua",
      "neovim/nvim-lspconfig",
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      local goNvim = require("go")
      goNvim.setup()
      vim.keymap.set("n", "<leader>ce", "<cmd>GoIfErr<CR>")
      vim.keymap.set("n", "<leader>cag", "<cmd>GoAddTag<CR>")
      vim.keymap.set("n", "<leader>crg", "<cmd>GoRmTag<CR>")
      vim.keymap.set("n", "<leader>ct", "<cmd>GoAddTest<CR>")
      vim.keymap.set("n", "<leader>crt", "<cmd>GoTest<CR>")
      vim.keymap.set("n", "<leader>cfrt", "<cmd>GoTestFunc<CR>")
      vim.keymap.set("n", "<leader>cat", "<cmd>GoAddAllTest<CR>")
      vim.keymap.set("n", "<leader>cfs", "<cmd>GoFillStruct<CR>")
    end,
    event = { "CmdlineEnter" },
    ft = { "go", "gomod" },
    build = ':lua require("go.install").update_all_sync()', -- if you need to install/update all binaries
  },
}
