return{
    'brianhuster/live-preview.nvim',
    dependencies = {
		'folke/snacks.nvim',
    },
  keys = {
    { "<leader>pp", "<cmd>LivePreview start<cr>", desc = "live preview" },
    { "<leader>px", "<cmd>LivePreview close<cr>", desc = "live preview close" },
  },
}
