return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  opts = {
    filesystem = {
      filtered_items = {
        hide_dotfiles = false,
        visible = true,
        hide_gitignored = true,
      }
    }
  },
  config = function()
    vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left<CR>", {})
    vim.keymap.set("n", "<leader>bf", ":Neotree buffers reveal float<CR>", {})
  end,
}