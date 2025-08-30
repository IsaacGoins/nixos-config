{
  plugins.cmp = {
    enable = true;
    autoEnableSources = true;
    settings.sources = [
      { name = "nvim_lsp"; }
      { name = "path"; }
      { name = "buffer"; }
      { name = "luasnip"; }
    ];

    settings.mapping = {
      "<CR>" = "cmp.mapping.confirm({ select = true })";
      "<C-j>" =
        "	cmp.mapping(function(fallback)\n		if cmp.visible() then\n			cmp.select_next_item()\n		elseif luasnip.expandable() then\n			luasnip.expand()\n		elseif luasnip.expand_or_jumpable() then\n			luasnip.expand_or_jump()\n		elseif check_backspace() then\n			fallback()\n		else\n			fallback()\n		end\n	end, { \"i\", \"s\" })\n";
      "<C-k>" = "cmp.mapping.select_prev_item()"; # Previous suggestion
    };
  };
}
