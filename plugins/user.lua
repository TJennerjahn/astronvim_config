return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    'ggandor/leap.nvim',
    lazy = false,
    config = function()
      require('leap').set_default_keymaps(true)
      require('leap').opts.highlight_unlabeled_phase_one_targets = false
    end
  },
  {
    'mrjones2014/dash.nvim',
    lazy = false,
    build = 'make install',
  },
  {
    "ahmedkhalf/project.nvim",
    lazy = false,
    config = function()
      require("project_nvim").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
      require('telescope').load_extension('projects')
    end
  },
  {
    "dccsillag/magma-nvim",
    config = function()
      magma_image_provider = "kitty"
    end,
    lazy = false,
  },
}
