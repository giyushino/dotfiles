return {
  {
    "MeanderingProgrammer/render-markdown.nvim",
    ft = { "markdown" }, -- lazy-load when a Markdown file is opened
    opts = {},
    config = function(_, opts)
      require("render-markdown").setup(opts)
    end,
  },
}
