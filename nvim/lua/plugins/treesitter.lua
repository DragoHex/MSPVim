return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    lazy = false,
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter").setup()

      vim.api.nvim_create_autocmd("FileType", {
        callback = function(args)
          local buf = args.buf
          local ft = vim.bo[buf].filetype
          if ft == "" then
            return
          end

          local ts = require("nvim-treesitter")
          local ok, parsers = pcall(require, "nvim-treesitter.parsers")
          if ok and parsers[ft] then
            local installed = ts.get_installed("parsers")
            if not vim.tbl_contains(installed, ft) then
              ts.install({ ft })
            end
          end

          pcall(vim.treesitter.start, buf)
          vim.bo[buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
        end,
      })
    end,
  },
}
