{pkgs, ...}:

let
  mappings = builtins.readFile ./mappings.conf;
in
{
  programs.kitty = {
    enable = true;
    settings = {
      font_family = "FiraCodeMono";
      shell = "fish";
      enabled_layouts = "*";
    };
  };

}
