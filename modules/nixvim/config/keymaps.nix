{ self, ... }:
{
  keymaps = [

    #Neo-tree bindings
    {
      action = "<cmd>Neotree filesystem reveal left<CR>";
      key = "<leader>n";
    }
    {
      action = "<cmd>Neotree filesystem close<CR>";
      key = "<leader>m";
    }

    #lsp bindings
    {
      key = "<leader>f";
      action = "<cmd>lua vim.lsp.buf.format()<CR>";
    }
    {
      key = "<leader>ca";
      action = "<cmd> lua vim.lsp.buf.code_action()<CR>";
    }
		{
			key = "<leader>d";
			action = "<cmd> lua vim.lsp.buf.definition()<CR>";
		}
		{
			key = "K";
			action = "<cmd> lua vim.lsp.buf.hover()<CR>";
		}

  ];
}
