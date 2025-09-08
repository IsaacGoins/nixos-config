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
  '';
}
