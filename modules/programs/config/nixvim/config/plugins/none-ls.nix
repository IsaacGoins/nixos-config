{ pkgs, ... }:
{
  plugins.none-ls = {
    enable = true;
    sources = {
      formatting = {
        stylua.enable = true;
        nixfmt = {
          enable = true;
          package = pkgs.nixfmt-rfc-style;
        };
        clang_format.enable = true;
        black.enable = true;
        prettier = {
          enable = true;
          disableTsServerFormatter = true;
        };
        verible_verilog_format.enable = true;
      };
    };
  };
}
