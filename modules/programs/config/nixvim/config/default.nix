{ self, pkgs, ... }:
{
  # Import all your configuration modules here
  imports = [
    ./bufferline.nix
    ./options.nix
    ./keymaps.nix
    ./plugin_list.nix
  ];

  #Enable Nixvim
  enable = true;

  # Enable Color Scheme
  colorschemes.catppuccin.enable = true;

  #Enable grep for telescope
  extraPackages = with pkgs; [
    ripgrep
    fd
    fzf
  ];

  # Force verilog files
  extraConfigLua = ''
    -- Treat .v files as Verilog, not V language
    vim.filetype.add({
      extension = {
        v = "verilog",
        sv = "systemverilog",
        svh = "systemverilog",
      },
    })
  '';

}
