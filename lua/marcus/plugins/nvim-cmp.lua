return {
  "hrsh7th/nvim-cmp",
  --event = "InsertEnter",
  dependencies = {
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "L3MON4D3/LuaSnip",
    "saadparwaiz1/cmp_luasnip"
  },
  config = function()
    local cmp = require("cmp")
    local luaSnip = require("luasnip")

    cmp.setup({
      completion = {
        completeopt = "menu,menuone,preview"
      },
      snippet = { -- Configure how nvim-cmp interacts with snippet engine
        expand = function(args)
          luaSnip.lsp_expand(args.body)
        end
      },
      mapping = cmp.mapping.preset.insert({
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<C-e>"] = cmp.mapping.abort(),
      }),
      sources = cmp.config.sources({
        { name = "nvim_lsp" },
        { name = "luasnip" },
        { name = "buffer" },
        { name = "path" },
      })
    })
  end,
}
