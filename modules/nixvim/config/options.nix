{ self, ... }:
{
  opts = {
    number = true;
    relativenumber = true;

    shiftwidth = 2;
    tabstop = 2;
  };
  globals.mapleader = " ";

  extraConfigLua = ''
    	-- Enable Virtual Text for lsp
        vim.diagnostic.config({
          virtual_text = { prefix = "●" }, -- show inline error text with a bullet
          underline = true,
          signs = true,
          update_in_insert = false,
          severity_sort = true,
        })

    		  local ls = require("luasnip")

      vim.keymap.set({ "i", "s" }, "<C-j>", function()
        if ls.jumpable(1) then ls.jump(1) end
      end, { desc = "Luasnip jump forward" })

      vim.keymap.set({ "i", "s" }, "<C-k>", function()
        if ls.jumpable(-1) then ls.jump(-1) end
      end, { desc = "Luasnip jump backward" })

      vim.keymap.set({ "i", "s" }, "<C-l>", function()
        if ls.choice_active() then ls.change_choice(1) end
      end, { desc = "Luasnip next choice" })
  '';
}
